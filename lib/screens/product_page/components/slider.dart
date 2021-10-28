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
                radius: 45,
                backgroundColor: kproductPrimaryColor,
                child: CircleAvatar(
                  radius: 41,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black45, BlendMode.darken),
                            image: AssetImage('assets/images/slider-1.jpg'))),
                  ),
                ),
              ),
              Positioned(
                top: 7,
                left: 30,
                bottom: 8,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.redAccent,
                      size: 40,
                    )),
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
                radius: 45,
                backgroundColor: kproductPrimaryColor,
                child: CircleAvatar(
                  radius: 41,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black45, BlendMode.darken),
                            image: AssetImage('assets/images/slider-2.jpg'))),
                  ),
                ),
              ),
              Positioned(
                top: 7,
                left: 5,
                bottom: 8,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 40,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
