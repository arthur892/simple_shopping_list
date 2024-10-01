import 'package:simple_shopping_list/models/product.dart';

class Cart {
  List<Product> _cart = [];

  static final Cart _instance = Cart._internal();

  factory Cart() {
    return _instance;
  }
  Cart._internal();

  void addToCart(Product product) {
    _cart.add(product);
  }

  List<Product> getCartItems() {
    return _cart;
  }

  void removeFromCart(Product prodcut) {
    _cart.remove(prodcut);
  }
}
