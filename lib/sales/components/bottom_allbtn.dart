import 'package:flutter/material.dart';

import '../../constant.dart';

class BottomBtn extends StatelessWidget {
  const BottomBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: Text(
              "Orders",
              style: TextStyle(fontSize: 18, color: kTextColor),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: Text(
              "New Sale",
              style: TextStyle(fontSize: 18, color: kTextColor),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: Text(
              "Reciept",
              style: TextStyle(fontSize: 18, color: kTextColor),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {},
            child: Text(
              "Save & Print",
              style: TextStyle(fontSize: 18, color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
