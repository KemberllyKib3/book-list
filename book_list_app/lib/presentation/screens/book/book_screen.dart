import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/presentation/screens/book/book_detail_screen.dart';
import 'package:book_list_app/presentation/screens/book/componentes/list_livro.dart';
import 'package:book_list_app/presentation/screens/book/componentes/modal_widget.dart';
import 'package:flutter/material.dart';

import 'package:book_list_app/domain/entities/entities.dart';

class BookScreen extends StatelessWidget {
  final List<Book> books;

  const BookScreen({
    Key? key,
    required this.books,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Book List App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Olá, Avaliador",
                  style:
                      BookListTS.font16.copyWith(fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Bem vindo ao desafio técnico.",
                      style: BookListTS.font14,
                    ),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => const ModalWidget(
                            title: "Desafio",
                            description:
                                "Desenvolver App em flutter que inicialmente liste o titulo de todos os livros disponiveis em uma api.\n\n"
                                "Poder clicar no titulo de cada livro e abrir para ver o titulo, subtitulo e texto tambem disponiveis na api.",
                          ),
                        );
                      },
                      child: Text(
                        "Ver desafio",
                        style: BookListTS.font14.copyWith(
                          color: BookListColors.hBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Livros",
                    style:
                        BookListTS.font16.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: books
                            .map(
                              (book) => ListLivro(
                                book: book,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          BookDetailScreen(book: book),
                                    ),
                                  );
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
