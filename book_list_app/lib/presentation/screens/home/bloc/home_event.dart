import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent([Iterable? props]);

  @override
  List<Object> get props => [props];
}

class HomeInicializeEvent extends HomeEvent {
  @override
  String toString() {
    return 'HomeInicializeEvent';
  }
}
