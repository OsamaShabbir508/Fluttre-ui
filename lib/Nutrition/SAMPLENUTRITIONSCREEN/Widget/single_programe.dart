import 'package:flutter/material.dart';

Widget sampleNutritionPlan(BuildContext context, String plane) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 50),
      height: 70,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Colors.orange[600],
          Colors.orange[900],
        ]),
      ),
      child:
          Container(alignment: Alignment.center, child: _text(context, plane)),
    ),
  );
}

Widget _text(BuildContext context, String plane) {
  return Text(
    plane,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
  );
}
