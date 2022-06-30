import 'package:flutter/material.dart';
import 'package:ozone/sales/components/mydrawer.dart';

import 'components/body.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("New Sales"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          )
        ],
      ),
      drawer: MyDrawer(),
      body: Body(),
    );
  }
}
