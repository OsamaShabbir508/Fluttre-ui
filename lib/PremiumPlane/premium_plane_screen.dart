import 'package:flutter/material.dart';
import 'package:third/PremiumPlane/Widget/heading.dart';

class PremiumPlaneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          heading(context),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange[600],
                  ),
                ),
                Text(
                  'Premium Programes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          _singleElement(context, '3 Weeks', '\$TB'),
          _singleElement(context, '6 Weeks', '\$12 TB'),
          _singleElement(context, '12 Weeks', '\$18 TB'),
          _singleElement(context, '16 Weeks', '\$22 TB'),
        ],
      ),
    );
  }
}

Widget _singleElement(BuildContext context, String planeWeek, String price) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    height: 70,
    width: 330,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        Colors.orange[600],
        Colors.orange[900],
      ]),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_text(context, planeWeek), _text(context, price)],
    ),
  );
}

Widget _text(BuildContext context, String value) {
  return Text(
    value,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  );
}
