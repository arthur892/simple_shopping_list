import 'package:flutter/material.dart';
import 'package:simple_shopping_list/data/cart_data.dart';
import 'package:simple_shopping_list/models/product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details zu ${product.name}")),
      body: Center(
        child: Column(
          children: [
            Text(product.name),
            Text(product.description),
            Text(product.price.toStringAsFixed(2)),
            ElevatedButton(
                onPressed: () {
                  Cart().addToCart(product);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("${product.name} zum Warenkorb hinzugefügt")));
                },
                child: const Text("Add to Cart"))
          ],
        ),
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(Object context) {
    return Card(
      child: Column(
        children: [
          Text(product.name),
          Row(
            children: [
              const Placeholder(
                fallbackHeight: 50,
                fallbackWidth: 50,
              ),
              const SizedBox(
                width: 16,
              ),
              //Text(product.description),
              Expanded(child: Text(product.description)),
              Text(product.price.toStringAsFixed(2))
            ],
          ),
        ],
      ),
    );
  }
}
