import 'package:assignment_7/screens/product_page/product_screen.dart';
import 'package:assignment_7/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor customColor = MaterialColor(0xFFff5252, colorCodes);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: customColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                onPrimary: Colors.white,
                primary: Colors.redAccent,
                shape: const CircleBorder())),
      ),
      title: 'Assignment 7',
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
