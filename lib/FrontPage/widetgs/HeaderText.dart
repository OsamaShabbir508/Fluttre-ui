import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Text(
              'Lorem is the simply dummy Text of the ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              child: Text('printing and type setting Industry',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  )),
            )
          ],
        ));
  }
}
