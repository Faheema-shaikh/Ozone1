import 'package:flutter/material.dart';

class Discountbtn extends StatelessWidget {
  const Discountbtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "Bill Discount ₹ 0.0",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Text(
            'Grand Total ₹ 0.0',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
