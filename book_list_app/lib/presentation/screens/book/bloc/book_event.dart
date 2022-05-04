import 'package:equatable/equatable.dart';

abstract class BookEvent extends Equatable {
  const BookEvent([Iterable? props]);

  @override
  List<Object> get props => [props];
}

class ConsultaBooksEvent extends BookEvent {
  @override
  String toString() {
    return 'ConsultaBooksEvent';
  }
}
