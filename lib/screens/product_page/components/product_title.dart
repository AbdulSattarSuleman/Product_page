import 'package:assignment_7/style.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
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
              text: const TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
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
    );
  }
}
