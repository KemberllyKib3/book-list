import 'package:flutter/material.dart';

import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/domain/entities/entities.dart';

class ListLivro extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const ListLivro({
    Key? key,
    required this.book,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          tileColor: BookListColors.black,
          onTap: onTap,
          leading: Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: BookListColors.gray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.book_outlined,
              color: BookListColors.black,
              size: 25,
            ),
          ),
          title: Text(
            book.title,
            style: BookListTS.font14.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            book.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: BookListTS.font12.copyWith(color: Colors.white),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
