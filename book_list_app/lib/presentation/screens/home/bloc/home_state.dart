import 'package:book_list_app/domain/entities/entities.dart';

class HomeState {
  final bool isInicializando;
  final bool isSucesso;
  final bool isFalha;
  final String? error;
  final Home? home;

  const HomeState({
    required this.isInicializando,
    required this.isSucesso,
    required this.isFalha,
    required this.error,
    required this.home,
  });

  factory HomeState.initial() {
    return const HomeState(
      isInicializando: true,
      isSucesso: false,
      isFalha: false,
      error: null,
      home: null,
    );
  }

  factory HomeState.failure(String error) {
    return HomeState(
      isInicializando: false,
      isSucesso: false,
      isFalha: true,
      error: error,
      home: null,
    );
  }

  factory HomeState.success({
    required Home home,
  }) {
    return HomeState(
      isInicializando: false,
      isSucesso: true,
      isFalha: false,
      error: null,
      home: home,
    );
  }

  @override
  String toString() {
    return 'DisciplinaState{'
        'isInicializando: $isInicializando, '
        'isSucesso: $isSucesso, '
        'isFalha: $isFalha, '
        'error: $error}';
  }
}
