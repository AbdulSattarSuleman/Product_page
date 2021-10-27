import 'package:assignment_7/screens/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Assignment 7',
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
