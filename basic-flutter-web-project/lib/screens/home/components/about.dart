import 'package:flutter/material.dart';
import 'package:mimar/screens/home/components/app_bar.dart';

import '../../../constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(children: [
      Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Baslksz-1.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me".toUpperCase(),
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: smallwriteColors, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    """


Born in 1995 Turkey/Ankara. \nGraduated in 2019 at Gaziantep University.\nMy hobbies are football, tennis and computer games.\nSpent time in different workplaces and endeavors.""",
                    style: TextStyle(
                        fontSize: 46, color: Colors.black87.withOpacity(0.80)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
