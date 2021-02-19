import 'package:flutter/material.dart';

import 'package:third/SignUp/widgets/sign_up_button.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: 80, right: 100, left: 100, bottom: 35),
              child: Text(
                'FUZION FIT',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            _signUpInputFields(context, 'Email', 'Email@email.com'),
            _signUpInputFields(context, 'Password', '********'),
            _signUpInputFields(context, 'Confirm Password', '*******'),
            Signup(),
            _signUpWithSocialMedia(context)
          ],
        ),
      ),
    );
  }
}

Widget _signUpInputFields(BuildContext context, String title, String hintText) {
  final String _title = title;
  final String _hintText = hintText;
  return Container(
    margin: EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        TextField(
            decoration: InputDecoration(
                hintText: _hintText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 10)))
      ],
    ),
  );
}

Widget _signUpWithSocialMedia(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 100, right: 50, top: 8),
    child: Row(
      children: [
        Text(
          'Sign-Up with Social Media',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Container(
          margin: EdgeInsets.all(6),
          child: Text(
            'G',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.all(6),
          child: Text(
            'f',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
