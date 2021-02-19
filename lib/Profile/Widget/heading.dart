import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget heading(BuildContext context) {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(top: 20, left: 50, bottom: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FUSION',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Text(
          'FIT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    ),
  );
}
