import 'package:flutter/material.dart';

class AmtFeild extends StatelessWidget {
  const AmtFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlineButton(
          //borderSide: BorderSide(color: Colors.blue),
          onPressed: () {},
          child: Text(
            "Redeem Amount ₹ 0.0",
          ),
        ),
        const SizedBox(width: 5),
        Text(
          "Received Amount ₹",
          style: TextStyle(color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 60,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),
              )),
        ),
      ],
    );
  }
}
