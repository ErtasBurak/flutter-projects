import 'package:flutter/material.dart';
import 'package:mimar/constants.dart';
import 'package:mimar/screens/home/components/about.dart';
import 'package:mimar/screens/home/components/project_env.dart';
import 'package:mimar/screens/home/home_screen.dart';
import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: smallwriteColors,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/fk_logo.jpg",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Furkan Kaplan".toUpperCase(),
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          MenuItem(
            title: "About",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          MenuItem(
            title: "Projects",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProjectEnv()));
            },
          ),
        ],
      ),
    );
  }
}
