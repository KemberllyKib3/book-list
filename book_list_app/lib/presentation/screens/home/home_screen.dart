import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/presentation/screens/book/bloc/book.dart';
import 'package:book_list_app/presentation/screens/book/book_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BookBloc>(context).add(ConsultaBooksEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        if (state.isFalha) {
          throw state.error!;
        }
        if (state.isInicializando) {
          const CircularProgressIndicator(
            strokeWidth: 2,
            color: BookListColors.hBlue,
            backgroundColor: BookListColors.border,
          );
        }

        return state.isSucesso ? BookScreen(books: state.books!) : Container();
      },
    );
  }
}
