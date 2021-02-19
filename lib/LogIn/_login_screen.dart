import 'package:flutter/material.dart';
import 'package:third/LogIn/Widget/login_button.dart';

class LogInScreen extends StatelessWidget {
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
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 80, right: 100, left: 100, bottom: 35),
            child: Text(
              'FUZION FIT',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          _loginInputFields(context, 'User Name', 'Email@email.com'),
          _loginInputFields(context, 'Password', '*********'),
          LoginButon()
        ]),
      ),
    );
  }
}

Widget _loginInputFields(BuildContext context, String title, String hintText) {
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
