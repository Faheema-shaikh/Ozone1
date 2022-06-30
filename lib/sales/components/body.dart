import 'package:flutter/material.dart';
import 'package:ozone/Items/item_screen.dart';
import 'package:ozone/constant.dart';
import 'package:ozone/sales/components/additem_feild.dart';
import 'package:ozone/sales/components/amt_bottom_feild.dart';
import 'package:ozone/sales/components/bottom_allbtn.dart';
import 'package:ozone/sales/components/discount_btn_feild.dart';
import 'package:ozone/sales/components/row_item_feild.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //const Body({Key? key}) : super(key: key);
  late int selectedRadio;
  bool istrue = true;

  String dropdownvalue = 'All';

  var items = [
    'All',
    'General',
    'Honey Cake',
    'Smart Phones',
    'HeadPhones',
    'T Shirt',
    'Jeans',
    'Shoes',
    'Mask',
    'Airpod',
  ];

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.blueGrey,
            width: 500,
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      activeColor: Colors.pink,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val as int;
                        });
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Cash",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setState(() {
                          selectedRadio = val as int;
                        });
                      },
                      activeColor: Colors.pink,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Credit",
                        style: TextStyle(fontSize: 15, color: kTextColor),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    buildDropDownBtn(),
                    Switch(
                        activeColor: Colors.pink,
                        value: istrue,
                        onChanged: (istrue) {})
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        //padding: EdgeInsets.all(20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: Colors.transparent),
                    onPressed: () {},
                    child: Text(selectedRadio == 1 ? 'Cash' : 'Customer Name'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Invoice Number:MS292"),
                const SizedBox(height: 5),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Sales",
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                const buildRowFeild(),
              ],
            ),
          ),
          const ItemFeild(),
          ListView(
            shrinkWrap: true,
            children: [
              ItemScreen(),
              ItemScreen(),
              ItemScreen(),
              // ItemScreen(),
            ],
          ),
          const AmtFeild(),
          const Discountbtn(),
          const BottomBtn(),
        ],
      ),
    );
  }

  DropdownButton<dynamic> buildDropDownBtn() {
    return DropdownButton(
      style: TextStyle(
        color: kTextColor,
      ),
      dropdownColor: Colors.blue,
      value: dropdownvalue,
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (newValue) {},
    );
  }
}
