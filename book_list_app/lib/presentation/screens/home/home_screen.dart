import 'package:book_list_app/app/book_list_theme.dart';
import 'package:book_list_app/presentation/screens/home/bloc/home.dart';
import 'package:book_list_app/presentation/screens/home/compontes/home_body.dart';
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
    BlocProvider.of<HomeBloc>(context).add(HomeInicializeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: ((context, state) {
        if (state.isFalha) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: SizedBox(
                child: Text("Algo deu errado."),
              ),
              duration: Duration(seconds: 5),
              backgroundColor: BookListColors.hRed,
            ),
          );
        }
        if (state.isInicializando) {
          const CircularProgressIndicator(
            strokeWidth: 2,
            color: BookListColors.hBlue,
            backgroundColor: BookListColors.border,
          );
        }

        return state.isSucesso ? HomeBody(home: state.home!) : Container();
      }),
    );
  }
}
