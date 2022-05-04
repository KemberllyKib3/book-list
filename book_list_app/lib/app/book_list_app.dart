import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/app/injector.dart';
import 'package:book_list_app/presentation/screens/book/bloc/book.dart';
import 'package:book_list_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListApp extends StatefulWidget {
  const BookListApp({Key? key}) : super(key: key);

  @override
  _BookListAppState createState() => _BookListAppState();
}

class _BookListAppState extends State<BookListApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookBloc>(
      create: ((BuildContext context) => getIt<BookBloc>()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: applicationName,
        theme: buildTheme(),
        home: const HomeScreen(),
      ),
    );
  }
}
