import 'package:flutter/material.dart';
import 'package:third/AppOverview/overview_screen.dart';

class LoginButon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50),
        height: 60,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.orange[300], Colors.orange[900]])),
        child: Text(
          'LOG-IN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => OverViewScreen()))
      },
    );
  }
}
