import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());

  static NewestBooksCubit get(context) => BlocProvider.of(context);
  HomeRepo homeRepo = HomeRepo();

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
