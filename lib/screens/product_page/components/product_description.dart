import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 30, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              '''Tempor qui laboris ex elit adipisicing ut esse in aute laborum pariatur dolore irure. pariatur dolore irure pariatur dolore irure pariatur dolore irure. ''',
              style: TextStyle(fontSize: 17)),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Read More ..',
            style: TextStyle(color: Colors.redAccent, fontSize: 22.9),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.insert_invitation,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 29,
              ),
              Text(
                '0.5km Distance',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
