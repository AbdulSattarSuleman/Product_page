import 'package:assignment_7/screens/product_page/components/add_to_cart.dart';
import 'package:assignment_7/screens/product_page/components/header.dart';
import 'package:assignment_7/screens/product_page/components/product_description.dart';
import 'package:assignment_7/screens/product_page/components/product_title.dart';
import 'package:assignment_7/screens/product_page/components/slider.dart';
import 'package:assignment_7/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: ''),
        ],
      ),
      body: ListView(
        children: const [
          // App Header
          Header(),

          // SLider
          ProductSlider(),

          //Product Title, Category Price
          ProductTitle(),

          //Product Description

          ProductDescription(),

          // Add To Cart
          AddToCart()
        ],
      ),
    );
  }
}
