import 'dart:developer';

import 'package:book_list_app/domain/entities/entities.dart';
import 'package:book_list_app/domain/errors/errors.dart';
import 'package:book_list_app/domain/services/services.dart';
import 'package:dartz/dartz.dart';

class BookUsecases {
  final BookService bookService;

  BookUsecases({
    required this.bookService,
  });

  Future<Either<Failure, Iterable<Book>>> getBooks() async {
    try {
      var books = await bookService.getBooks();

      if (books == null) {
        return Left(InternalError(message: "Erro ao buscar livros."));
      }

      return Right(books);
    } catch (error, stack) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'BookUsecases.getBooks',
        stackTrace: stack,
      );
      return Left(InternalError(message: error.toString()));
    }
  }
}
