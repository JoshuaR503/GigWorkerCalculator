import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';

class EarningsStatsCard extends StatelessWidget {

  final String title;
  final String value;
  final Function? action;
  final bool actionEnabled;
  final Color color;

  const EarningsStatsCard({Key? key, 
    required this.title,
    required this.value,
    required this.action,
    required this.actionEnabled,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    final TextStyle kTitleStyle = TextStyle(
      fontSize: 14.5,
      height: 1.5,
      color: Colors.white70,
      fontWeight: FontWeight.w500,
    );

    // ignore: prefer_const_constructors
    final TextStyle kValueStyle = TextStyle(
      fontSize: 24.0,
      height: 1.5,
      letterSpacing: -1,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return GestureDetector(
      onTap: () {
        if (actionEnabled) { action!(); }
      },
      child:  Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: Color(0xffff4f4f),
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: kTitleStyle),
              ],
            ),

            Text(value, style: kValueStyle),
          ],
        ),
      ),
    );
  }
}