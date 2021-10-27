import 'package:assignment_7/style.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 230,
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
            radius: 90,
            backgroundColor: kproductPrimaryColor,
            child: const CircleAvatar(
              radius: 87,
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
                  backgroundImage: AssetImage("assets/images/slider-2.jpg"),
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
    );
  }
}
