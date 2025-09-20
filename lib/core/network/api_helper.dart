import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_response.dart';
import 'end_points.dart';

class ApiHelper {
  static final ApiHelper _instance = ApiHelper._init();

  factory ApiHelper() => _instance;

  late Dio dio;

  ApiHelper._init() {
    dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint("--- Headers : ${options.headers}");
        debugPrint("--- endpoint : ${options.path}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint("--- Response : ${response.data}");
        return handler.next(response);
      },
      onError: (error, handler) {
        debugPrint("--- Error : ${error.response?.data}");
        return handler.next(error);
      },
    ));
  }

  Future<ApiResponse> getRequest({required String endPoint}) async {
    return ApiResponse.fromResponse(await dio.get(endPoint));
  }

// Future<ApiResponse> postRequest({
//   required String endPoint,
//   Map<String, dynamic>? data,
// }) async {
//   return ApiResponse.fromResponse(await dio.post(endPoint, data: data));
// }
}
