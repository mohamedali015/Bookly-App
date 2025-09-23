import 'package:bookly/features/home/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const HomeViewBody(),
      ),
    );
  }
}
