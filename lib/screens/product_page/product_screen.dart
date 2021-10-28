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

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ProductPage(),
    ProductPage(),
    ProductPage(),
    ProductPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.refresh_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: ''),
        ],
      ),
      body: SafeArea(child: _pages.elementAt(_selectedIndex)),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
