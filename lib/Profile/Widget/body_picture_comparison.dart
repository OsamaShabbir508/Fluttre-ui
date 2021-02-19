import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bodyPictureComparison(BuildContext context) {
  return Container(
    //  alignment: Alignment.center,

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_singleBodyPicture(context), _singleBodyPicture(context)],
    ),
  );
}

Widget _singleBodyPicture(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 220,
        width: 150,
        margin: EdgeInsets.all(13),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Card(
          color: Colors.white,
          elevation: 10,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Text(
              'Date:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text('Weight:',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
    ],
  );
}
