import 'package:flutter/material.dart';
import 'package:third/Signup/SignUpScreen.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.orange[300], Colors.orange[900]])),
        child: InkWell(
          child: Text(
            'SIGN-UP',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SignUp())),
          },
        ));
  }
}
