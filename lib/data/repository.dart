import 'package:simple_shopping_list/models/product.dart';

abstract class Repository {
  //Sortiment
  List<Product> getAllProducts();
  void addProduct(Product product) {}
}
