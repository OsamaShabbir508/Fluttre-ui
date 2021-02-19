import 'package:flutter/material.dart';
import 'package:third/Nutrition/CUSTOMMEAL/Widget/custom_input_datafields.dart';
import 'package:third/Nutrition/CUSTOMMEAL/Widget/heading.dart';

class CustomMeal extends StatelessWidget {
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
            child: Text(
              'CUSTOM MEAL PLANS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          customInputDataFields(context),
        ],
      ),
    );
  }
}
