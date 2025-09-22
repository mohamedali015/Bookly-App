import 'dart:async';

import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:bookly/features/search/manager/search_cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchRepo searchRepo = SearchRepo();

  final FocusNode focusNode = FocusNode();
  Timer? _debounce;

  void focusOnTextField(context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(focusNode);
    });
  }

  Future<void> fetchSearchBooks(String value) async {
    if (value.isEmpty) {
      _debounce?.cancel();
      emit(SearchSuccess([]));
      return;
    }

    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 600), () async {
      emit(SearchLoading());

      final result = await searchRepo.fetchSearchedBooks(search: value);

      result.fold(
        (failure) => emit(SearchFailure(failure.message)),
        (books) => emit(SearchSuccess(books)),
      );
    });
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
