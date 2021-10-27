import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 80, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.redAccent,
              child: Text(
                '-',
                style: TextStyle(fontSize: 29, color: Colors.white),
              ),
            ),
          ),
          const Text('1', style: TextStyle(fontSize: 30, color: Colors.black)),
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.redAccent,
              child: Text(
                '+',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  onPrimary: Colors.white,
                  primary: Colors.redAccent),
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_rounded),
              label: const Text('Add To Cart', style: TextStyle(fontSize: 20)))
        ],
      ),
    );
  }
}
