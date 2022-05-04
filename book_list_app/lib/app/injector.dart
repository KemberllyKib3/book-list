import 'package:book_list_app/data/services/book_service_impl.dart';
import 'package:book_list_app/domain/services/book_service.dart';
import 'package:book_list_app/domain/usecases/book_usecases.dart';
import 'package:book_list_app/presentation/screens/book/bloc/book.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Bloc
  getIt.registerFactory(() => BookBloc(bookUsecases: getIt()));

  // Usecases
  getIt.registerFactory(() => BookUsecases(bookService: getIt()));

  // Services
  getIt.registerFactory<BookService>(() => BookServiceImpl());
}
