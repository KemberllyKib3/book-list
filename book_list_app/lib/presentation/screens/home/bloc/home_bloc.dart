import 'dart:async';
import 'package:book_list_app/domain/usecases/usecases.dart';
import 'package:book_list_app/presentation/screens/home/bloc/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecases homeUsecases;

  HomeBloc({required this.homeUsecases}) : super(HomeState.initial()) {
    on<HomeInicializeEvent>(_onHomeInicializeEvent);
  }

  FutureOr<void> _onHomeInicializeEvent(
      HomeInicializeEvent event, Emitter<HomeState> emit) async {
    var result = await homeUsecases.getHome();

    result.fold(
      (failure) => emit(HomeState.failure(failure.message)),
      (success) => emit(HomeState.success(home: success)),
    );
  }
}
