import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';

class DecorativeCard extends StatelessWidget {

  final String title;
  final String value;
  final Function? action;
  final bool actionEnabled;
  final Color color;

  // ignore: prefer_const_constructors_in_immutables
  DecorativeCard({Key? key, 
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
      fontSize: 16.5,
      height: 1.5,
      color: Colors.white70,
      fontWeight: FontWeight.w500,
    );

    final TextStyle kValueStyle = TextStyle(
      fontSize: 32.0,
      height: 1.5,
      letterSpacing: -1,
      color: color,
      fontWeight: FontWeight.bold,
    );

    return GestureDetector(
      onTap: () {
        if (actionEnabled) { action!(); }
      },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: kTitleStyle),

                // if (actionEnabled) FaIcon(
                //   FontAwesomeIcons.angleRight,
                //   color: Colors.grey.shade300,
                //   size: 24,
                // )

              ],
            ),

            Text(value, style: kValueStyle),
          ],
        ),
      ),
    );
  }
}