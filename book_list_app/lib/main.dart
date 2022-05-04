import 'package:book_list_app/app/book_list_app.dart';
import 'package:flutter/material.dart';
import 'package:book_list_app/app/injector.dart' as di;

void main() async {
  await di.init();
  runApp(const BookListApp());
}
