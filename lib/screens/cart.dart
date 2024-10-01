import 'package:flutter/material.dart';
import 'package:simple_shopping_list/data/cart_data.dart';
import 'package:simple_shopping_list/models/product.dart';
import 'package:simple_shopping_list/screens/product_detail.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final Cart customerCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: customerCart.getCartItems().length,
        itemBuilder: (context, index) {
          final Product product = customerCart.getCartItems()[index];
          return ProductWidget(product: product);
        },
      ),
    );
  }
}
