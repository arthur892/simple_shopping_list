import 'package:flutter/material.dart';
import 'package:simple_shopping_list/screens/landing.dart';
import 'package:simple_shopping_list/screens/product_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: LandingListView(),
        ),
      ),
    );
  }
}
