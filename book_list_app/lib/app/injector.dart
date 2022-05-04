import 'package:book_list_app/data/services/book_service_impl.dart';
import 'package:book_list_app/domain/services/book_service.dart';
import 'package:book_list_app/domain/usecases/home_usecases.dart';
import 'package:book_list_app/presentation/screens/home/bloc/home.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Bloc
  getIt.registerFactory(() => HomeBloc(homeUsecases: getIt()));

  // Usecases
  getIt.registerFactory(() => HomeUsecases(bookService: getIt()));

  // Services
  getIt.registerFactory<BookService>(() => BookServiceImpl());
}
