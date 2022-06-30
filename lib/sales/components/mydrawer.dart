import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/logo.jpg',
                    height: 70,
                  ),
                ),
                Text(
                  "\nNew Company \nAdmin\n Ver:2.1.76.2",
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: Column(
              children: [
                ListTile(
                  title: Text("Sales New"),
                  leading: Image.asset(
                    "assets/icons/Pricing.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Order New"),
                  leading: Image.asset(
                    "assets/icons/Add Shopping Cart.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Sales Return"),
                  leading: Image.asset(
                    "assets/icons/Energy Care.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Sales"),
                  leading: Image.asset("assets/icons/Sale.png", width: 25),
                ),
                ListTile(
                  title: Text("DashBoard"),
                  leading:
                      Image.asset("assets/icons/Health Data.png", width: 25),
                ),
                ListTile(
                  title: Text("Customers"),
                  leading:
                      Image.asset("assets/icons/User Account.png", width: 25),
                ),
                ListTile(
                  title: Text("Item Wise Sales Report"),
                  leading: Image.asset(
                    "assets/icons/Graph Report.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Stock"),
                  leading: Image.asset(
                    "assets/icons/Gold Bars.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Payment Voucher"),
                  leading: Image.asset(
                    "assets/icons/Bank Card Dollar.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Reciept Voucher"),
                  leading: Image.asset(
                    "assets/icons/Receipt.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Voucher"),
                  leading: Image.asset(
                    "assets/icons/Cheque.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Customer Account"),
                  leading: Image.asset("assets/icons/Customer.png", width: 25),
                ),
                ListTile(
                  title: Text("Sync"),
                  leading: Image.asset(
                    "assets/icons/Refresh.png",
                    width: 25,
                  ),
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Image.asset("assets/icons/Settings.png", width: 25),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: Column(
              children: [
                ListTile(
                  title: Text("Import"),
                  leading: Icon(
                    Icons.call_received_outlined,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text("Export"),
                  leading: Icon(
                    Icons.call_made_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
