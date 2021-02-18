import 'package:flutter/material.dart';
import 'package:third/FrontPage/widetgs/HeaderText.dart';
import 'package:third/FrontPage/widetgs/SignUpButton.dart';
import 'package:third/FrontPage/widetgs/footer.dart';
import 'package:third/FrontPage/widetgs/middleHead.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [HeaderText(), MiddleHead(), SignUpButton(), Footer()],
      ),
    );
  }
}
