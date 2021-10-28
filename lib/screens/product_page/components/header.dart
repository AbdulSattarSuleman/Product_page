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
                    contentPadding: const EdgeInsets.all(8),
                    prefixIconConstraints: const BoxConstraints(minWidth: 50),
                    fillColor: catalogBoxColor,
                    filled: true,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                          // color: Colors.transparent,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search Your Food',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            CircleAvatar(
              radius: 21,
              backgroundColor: kproductPrimaryColor,
              child: const CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage("assets/images/user.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
