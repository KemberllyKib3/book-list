import 'dart:developer';

import 'package:book_list_app/domain/entities/entities.dart';
import 'package:book_list_app/domain/errors/errors.dart';
import 'package:book_list_app/domain/services/services.dart';
import 'package:dartz/dartz.dart';

class HomeUsecases {
  final BookService bookService;

  HomeUsecases({
    required this.bookService,
  });

  Future<Either<Failure, Home>> getHome() async {
    try {
      var books = await bookService.getBooks();

      if (books == null) {
        return Left(InternalError(message: "Erro ao buscar livros."));
      }

      return Right(
        Home(books: books.toList()),
      );
    } catch (error, stack) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'HomeUsecases.getHome',
        stackTrace: stack,
      );
      return Left(InternalError(message: error.toString()));
    }
  }
}
