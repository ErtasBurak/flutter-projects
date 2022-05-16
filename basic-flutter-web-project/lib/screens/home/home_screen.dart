import 'package:flutter/material.dart';
import 'package:mimar/constants.dart';
import 'package:mimar/screens/home/components/app_bar.dart';
import 'package:mimar/screens/home/components/body.dart';
import 'package:mimar/screens/home/components/listview.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(cacheExtent: 60000, shrinkWrap: true, children: [
      Container(
        color: kTextColor,
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomAppBar(), Body(), BodyListView()],
        ),
      ),
    ]));
  }
}
