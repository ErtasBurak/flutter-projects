import 'package:flutter/material.dart';
import 'package:mimar/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "architecture".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: smallwriteColors, fontWeight: FontWeight.bold),
          ),
          // Text(
          //   "Can add something under the headline2 text",
          //   style: TextStyle(
          //       fontSize: 21, color: Colors.black87.withOpacity(0.80)),
          // ),
        ],
      ),
    );
  }
}
