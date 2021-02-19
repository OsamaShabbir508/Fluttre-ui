import 'package:flutter/material.dart';
import 'package:third/Nutrition/Widget/heading.dart';
import 'package:third/Nutrition/Widget/nutrition_plans.dart';

class NutritionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          heading(context),
          Container(
            child: Text(
              'Nutrition',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Container(
            child: Column(
              children: [
                singleNutritionPlan(
                    context, 'SAMPLE MEAL PLANS', 'SamplePlans'),
                singleNutritionPlan(
                    context, 'CUSTOM MEAL PLANS', 'CustomPlans'),
                singleNutritionPlan(context, 'MACRO CALCULATOR', ''),
              ],
            ),
          )
        ],
      ),
    );
  }
}
