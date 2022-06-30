import 'package:flutter/material.dart';

class ItemFeild extends StatelessWidget {
  const ItemFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add Item",
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "",
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "",
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Image.asset(
              "assets/icons/Edit File.png",
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
