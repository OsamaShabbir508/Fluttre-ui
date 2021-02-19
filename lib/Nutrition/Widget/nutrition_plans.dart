import 'package:flutter/material.dart';
import 'package:third/Nutrition/CUSTOMMEAL/custom_meal_screen.dart';
import 'package:third/Nutrition/SAMPLENUTRITIONSCREEN/sample_nutrition_screen.dart';

Widget singleNutritionPlan(
    BuildContext context, String plane, String navigationRoute) {
  return InkWell(
    onTap: () {
      switch (navigationRoute) {
        case 'SamplePlans':
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SampleNurition()));
          }

          break;
        case 'CustomPlans':
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CustomMeal()));
          }
          break;
        default:
      }
    },
    child: Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 70,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Colors.orange[600],
          Colors.orange[900],
        ]),
      ),
      child:
          Container(alignment: Alignment.center, child: _text(context, plane)),
    ),
  );
}

Widget _text(BuildContext context, String plane) {
  return Text(
    plane,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
  );
}
