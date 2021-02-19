import 'package:flutter/material.dart';
import 'package:third/Nutrition/nutrition_screen.dart';
import 'package:third/PremiumPlane/premium_plane_screen.dart';
import 'package:third/Profile/profile_screen.dart';

class OverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // toolbarHeight: 10,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 50, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FUSION',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'FIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          _overViewScreenElement(
              context, Icons.person_pin, 'Profile', 'Profile'),
          _overViewScreenElement(
              context, Icons.emoji_people_outlined, 'Upper Body', ''),
          _overViewScreenElement(
              context, Icons.directions_walk_outlined, 'Lower Body', ''),
          _overViewScreenElement(context, Icons.emoji_emotions, 'Abs', ''),
          _overViewScreenElement(context, Icons.run_circle, 'HIIT', ''),
          _overViewScreenElement(
              context, Icons.star, 'Premimium Programme', 'PremiumProgrames'),
          _overViewScreenElement(
              context, Icons.fiber_smart_record_outlined, 'Fit\'N Box', ''),
          _overViewScreenElement(
              context, Icons.food_bank, 'Nutritions', 'Nutritions'),
        ],
      ),
    );
  }
}

Widget _overViewScreenElement(BuildContext context, IconData iconData,
    String title, String navigationRoute) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  iconData,
                  color: Colors.orange[600],
                  size: 40,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    ),
    onTap: () {
      switch (navigationRoute) {
        case 'Profile':
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ProfileScreen()));
          }
          break;
        case 'PremiumProgrames':
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => PremiumPlaneScreen()));
          }
          break;
        case 'Nutritions':
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => NutritionScreen()));
          }
          break;
        default:
      }
    },
  );
}
