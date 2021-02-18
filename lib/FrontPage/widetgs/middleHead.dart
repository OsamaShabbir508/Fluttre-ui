import 'package:flutter/material.dart';

class MiddleHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 150, bottom: 150),
      child: Text(
        'FUZION FIT',
        style: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
