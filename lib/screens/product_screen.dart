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
      body: ListView(
        children: [
          // App Header
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: kproductPrimaryColor,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 60),
                          fillColor: catalogBoxColor,
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Your Food'),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: kproductPrimaryColor,
                    child: const CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage("assets/images/user.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SLider
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: kproductPrimaryColor,
                      child: CircleAvatar(
                        backgroundColor: Colors.red.withOpacity(0.5),
                        radius: 32,
                        backgroundImage: const AssetImage(
                          "assets/images/slider-1.jpg",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 10,
                      bottom: 8,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new,
                              color: Colors.white)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: kproductPrimaryColor,
                  child: const CircleAvatar(
                    radius: 97,
                    backgroundImage: AssetImage('assets/images/slider-3.jpg'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: kproductPrimaryColor,
                      child: const CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/images/slider-2.jpg"),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 10,
                      bottom: 8,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Product Detail
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Original Fried Shrimp',
                      style: KproductStyle,
                    ),
                    Text(
                      'Shrimp Category',
                      style: KcategoryStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 15),
                        Icon(Icons.star, color: Colors.amber, size: 15),
                        Icon(Icons.star, color: Colors.amber, size: 15),
                        Icon(Icons.star, color: Colors.amber, size: 15),
                        Icon(Icons.star, color: Colors.amber, size: 15),
                      ],
                    )
                  ],
                ),
                RichText(
                    text: TextSpan(
                        text: '\$',
                        style: TextStyle(
                          fontSize: 16,
                          color: kproductPrimaryColor,
                        ),
                        children: const <TextSpan>[
                      TextSpan(
                          text: '6.9',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
