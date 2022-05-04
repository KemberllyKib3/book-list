import 'dart:async';
import 'package:book_list_app/domain/usecases/usecases.dart';
import 'package:book_list_app/presentation/screens/book/bloc/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookUsecases bookUsecases;

  BookBloc({required this.bookUsecases}) : super(BookState.initial()) {
    on<ConsultaBooksEvent>(_onConsultaBooksEvent);
  }

  FutureOr<void> _onConsultaBooksEvent(
      ConsultaBooksEvent event, Emitter<BookState> emit) async {
    var result = await bookUsecases.getBooks();

    result.fold(
      (failure) => emit(BookState.failure(failure.message)),
      (success) => emit(BookState.success(books: success.toList())),
    );
  }
}
