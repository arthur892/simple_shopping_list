import 'package:simple_shopping_list/models/product.dart';

abstract class Repository {
  List<Product> getAllProducts();
  void addProduct(Product product) {}
}
