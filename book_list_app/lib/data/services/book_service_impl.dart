import 'package:book_list_app/domain/entities/entities.dart';
import 'package:book_list_app/domain/services/book_service.dart';

class BookServiceImpl implements BookService {
  @override
  Future<Iterable<Book>?> getBooks() async {
    return [
      Book(
        id: 1,
        title: "A volta dos que não foram",
        subtitle: "Uma aventura confusa",
        text:
            "Eum est voluptatem ut reiciendis. Ea quidem eos officia omnis nemo ab vel dolor officia.",
      ),
      Book(
        id: 2,
        title: "As tranças de um careca",
        subtitle: "Uma aventura enrolada",
        text:
            "Quibusdam eum labore nobis tempora qui et. Id ut magnam. Non consectetur in nisi nisi aliquid voluptates in quisquam.",
      ),
      Book(
        id: 3,
        title: "Poeira em alto mar",
        subtitle: "Uma aventura molhada",
        text: "Quo est libero voluptas eveniet et reiciendis ratione.",
      ),
    ];
  }
}
