import 'package:flutter/material.dart';
import 'package:third/Nutrition/SAMPLENUTRITIONSCREEN/Widget/single_programe.dart';

class SampleNurition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            sampleNutritionPlan(context, 'PROGRAME 01'),
            sampleNutritionPlan(context, 'PROGRAME 02'),
            sampleNutritionPlan(context, 'PROGRAME 03'),
            sampleNutritionPlan(context, 'PROGRAME 04'),
            sampleNutritionPlan(context, 'PROGRAME 05'),
            sampleNutritionPlan(context, 'PROGRAME 06'),
          ],
        ),
      ),
    );
  }
}
