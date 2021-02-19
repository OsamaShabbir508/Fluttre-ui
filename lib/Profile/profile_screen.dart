import 'package:flutter/material.dart';
import 'package:third/Profile/Widget/Heading.dart';
import 'package:third/Profile/Widget/body_picture_comparison.dart';

class ProfileScreen extends StatelessWidget {
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
            child: Text(
              'Progrees Picture',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          bodyPictureComparison(context),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 7),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _personDetail(context, 'Name', 'Osama'),
                _personDetail(context, 'DOB', '10-10-10'),
                _personDetail(context, 'Current Weight', '75 Kg'),
                _personDetail(context, 'Goal', '50 Kg')
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _personDetail(BuildContext context, String title, String value) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _personDetailElement(context, title),
        _personDetailElement(context, value),
      ],
    ),
  );
}

Widget _personDetailElement(BuildContext context, String element) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
    child: Text(
      element,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
