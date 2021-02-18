import 'package:flutter/material.dart';
import 'package:third/SignUp/widgets/HeadText.dart';

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
      body: Column(
        children: [
          head(context),
        ],
      ),
    );
  }
}
