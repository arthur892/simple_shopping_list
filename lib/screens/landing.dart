import 'package:flutter/material.dart';
import 'package:simple_shopping_list/data/repository_data.dart';
import 'package:simple_shopping_list/screens/product_detail.dart';

class LandingListView extends StatelessWidget {
  RepositoryData data = RepositoryData();

  LandingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar Landing"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: data.getAllProducts().length,
        itemBuilder: (BuildContext context, int index) {
          final product = data.getAllProducts()[index];
          return GestureDetector(
            child: ProductWidget(product: product),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductDetail(
                  product: product,
                );
              }));
            },
          );
          // return ProductWidget(
          //   product: product,
          // );
        },
      ),
    );
  }
}
