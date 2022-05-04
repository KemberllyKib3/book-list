import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/domain/entities/entities.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detalhes'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/01/17/18/43/book-3088775_960_720.jpg",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildInfo(title: "Título", content: book.title),
            const SizedBox(height: 10),
            buildInfo(title: "Subtítulo", content: book.subtitle),
            const SizedBox(height: 10),
            buildInfo(title: "Sinopse", content: book.text),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildInfo({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: BookListTS.font16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          content,
          style: BookListTS.font14,
        ),
      ],
    );
  }
}
