import 'package:bookly/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/app_theme.dart';
import 'features/home/manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit()..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit()..fetchNewestBooks()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            title: 'BooklyApp',
            home: child,
          );
        },
        child: const SplashView(),
      ),
    );
  }
}
