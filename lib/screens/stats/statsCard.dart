import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {

  final String title;
  final String value;

  const StatsCard({Key? key, 
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    final TextStyle kTitleStyle = TextStyle(
      fontSize: 16,
      height: 1.5,
      color: Colors.white70,
      fontWeight: FontWeight.w500,
    );

    final TextStyle kValueStyle = TextStyle(
      fontSize: 20.0,
      height: 1.5,
      letterSpacing: 0.25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return GestureDetector(
      child:  Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: kCoralRed,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            title.isNotEmpty ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(title, style: kTitleStyle)],
            ) : Container(),

            Text(value, style: kValueStyle),
          ],
        ),
      ),
    );
  }
}