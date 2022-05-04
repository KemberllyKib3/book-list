import 'package:book_list_app/domain/entities/book.dart';

abstract class BookService {
  Future<Iterable<Book>?> getBooks();
}
