import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _quantity = 1;
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '-',
                style: TextStyle(fontSize: 23),
              ),
              // style: ElevatedButton.styleFrom(
              //     padding: const EdgeInsets.all(0),
              //     shape: const CircleBorder(),
              //     onPrimary: Colors.white,
              //     primary: Colors.redAccent),
            ),
            Text('$_quantity',
                style: TextStyle(fontSize: 30, color: Colors.black)),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '+',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPrimary: Colors.white,
                    primary: Colors.redAccent),
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_rounded),
                label:
                    const Text('Add To Cart', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
