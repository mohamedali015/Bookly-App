import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiResponse {
  final int statusCode;
  final dynamic data;
  final String message;

  ApiResponse({
    required this.statusCode,
    this.data,
    required this.message,
  });

  /// Factory method to handle Dio responses
  factory ApiResponse.fromResponse(Response response) {
    final data = response.data;

    String msg;
    if (response.statusCode == 200) {
      if (data is Map<String, dynamic> && data.containsKey("items")) {
        msg = "Fetched ${data["items"].length} items successfully.";
      } else {
        msg = "Request successful, but no items found.";
      }
    } else {
      msg = "An error occurred.";
    }

    return ApiResponse(
      statusCode: response.statusCode ?? 500,
      data: data,
      message: msg,
    );
  }

  /// Factory method to handle Dio or other exceptions
  factory ApiResponse.fromError(dynamic error) {
    debugPrint(error.toString());

    if (error is DioException) {
      return ApiResponse(
        data: error.response?.data,
        statusCode: error.response?.statusCode ?? 500,
        message: _handleDioError(error),
      );
    } else {
      return ApiResponse(
        statusCode: 500,
        message: 'An unknown error occurred.',
      );
    }
  }

  static String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout, please try again.";
      case DioExceptionType.sendTimeout:
        return "Send timeout, please check your internet.";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout, please try again later.";
      case DioExceptionType.badResponse:
        return _handleServerError(error.response);
      case DioExceptionType.cancel:
        return "Request was cancelled.";
      case DioExceptionType.connectionError:
        return "No internet connection.";
      default:
        return "Unknown error occurred.";
    }
  }

  /// Handling errors from the server response
  static String _handleServerError(Response? response) {
    if (response == null) return "No response from server.";

    if (response.data is Map<String, dynamic>) {
      final data = response.data as Map<String, dynamic>;
      if (data.containsKey("error") && data["error"] is Map) {
        final error = data["error"];
        return error["message"] ?? "Server returned an error.";
      }
    }

    return "Server error: ${response.statusMessage ?? "Unknown"}";
  }
}
