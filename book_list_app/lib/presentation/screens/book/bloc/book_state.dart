import 'package:book_list_app/domain/entities/entities.dart';

class BookState {
  final bool isInicializando;
  final bool isSucesso;
  final bool isFalha;
  final String? error;
  final List<Book>? books;

  const BookState({
    required this.isInicializando,
    required this.isSucesso,
    required this.isFalha,
    required this.error,
    required this.books,
  });

  factory BookState.initial() {
    return const BookState(
      isInicializando: true,
      isSucesso: false,
      isFalha: false,
      error: null,
      books: null,
    );
  }

  factory BookState.failure(String error) {
    return BookState(
      isInicializando: false,
      isSucesso: false,
      isFalha: true,
      error: error,
      books: null,
    );
  }

  factory BookState.success({
    required List<Book> books,
  }) {
    return BookState(
      isInicializando: false,
      isSucesso: true,
      isFalha: false,
      error: null,
      books: books,
    );
  }

  @override
  String toString() {
    return 'DisciplinaState{'
        'isInicializando: $isInicializando, '
        'isSucesso: $isSucesso, '
        'isFalha: $isFalha, '
        'error: $error}';
  }
}
