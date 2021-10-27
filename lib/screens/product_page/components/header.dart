import 'package:assignment_7/style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                    // border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(8),
                    prefixIconConstraints: const BoxConstraints(minWidth: 50),
                    fillColor: catalogBoxColor,
                    filled: true,
                    // enabledBorder: OutlinedBorder(side: ),

                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.0, color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Your Food'),
              ),
            ),
            CircleAvatar(
              radius: 19,
              backgroundColor: kproductPrimaryColor,
              child: const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
