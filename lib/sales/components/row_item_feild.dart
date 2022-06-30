import 'package:flutter/material.dart';

class buildRowFeild extends StatelessWidget {
  const buildRowFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Item",
        ),
        Text(
          "Qty",
        ),
        Text(
          "Total",
        ),
        TextButton.icon(
          style: TextButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: Text(""),
        )
      ],
    );
  }
}
