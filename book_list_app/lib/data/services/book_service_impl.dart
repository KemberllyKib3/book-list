import 'dart:developer';

import 'package:book_list_app/domain/entities/entities.dart';
import 'package:book_list_app/domain/services/book_service.dart';
import 'package:dio/dio.dart';

class BookServiceImpl implements BookService {
  @override
  Future<Iterable<Book>?> getBooks() async {
    try {
      var apiResponse = await Dio().get<Object>(
          "https://62507208977373573f3d77f0.mockapi.io/api/lib/library");

      List<Book> books =
          await trateRespostaListaBook(apiResponse, _mapeieBookEntity);
      return books;
    } catch (error, stack) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'BookServiceImpl.getBooks',
        stackTrace: stack,
      );
    }
    return null;
  }

  List<Book> _mapeieBookEntity(List? data) {
    if (data == null || data.isEmpty) return [];
    return data.map((map) {
      return Book(
        id: int.parse(map['id']),
        title: map['title'],
        subtitle: map['subtitle'],
        text: map['text'],
      );
    }).toList(growable: false);
  }

  Future<List<T>> trateRespostaListaBook<T, K>(
    Response response,
    Function(K) callbackSucesso,
  ) async {
    if (!response.statusCode.toString().startsWith('2')) {
      throw "Erro no tratamento de resposta da API";
    }

    if (response.statusCode == 204) {
      return <T>[];
    }

    return callbackSucesso(response.data as K) as List<T>;
  }
}
