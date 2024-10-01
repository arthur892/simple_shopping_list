import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("data")

        // ListView.separated(
        //   itemCount: 5,
        //   itemBuilder: (context, index) => Text(context.toString()),
        //   separatorBuilder: (context, index) => Divider(
        //     height: 5,
        //   ),
        // ),
        );
  }
}
