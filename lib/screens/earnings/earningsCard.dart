// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';

class EarningsCard extends StatelessWidget {

  final String title;
  final String value;
  final Function? action;
  final bool actionEnabled;
  final Color color;

  const EarningsCard({Key? key, 
    required this.title,
    required this.value,
    required this.action,
    required this.actionEnabled,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const TextStyle kTitleStyle = TextStyle(
      fontSize: 14.5,
      height: 1.5,
      color: Colors.white70,
      fontWeight: FontWeight.w500,
    );

   

    const TextStyle kValueStyle =  TextStyle(
      fontSize: 24.0,
      height: 1.5,
      letterSpacing: -1,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    const TextStyle kSecondaryValueStyle =  TextStyle(
      fontSize: 18.0,
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
          color: kCoralRed,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            IntrinsicHeight(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(value, style: kValueStyle),
                    Text(title, style: kTitleStyle),
                  ],
                ),

                // ignore: prefer_const_constructors
                VerticalDivider(
                  color: Color(0xffb10000),
                  thickness: 2,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$4,018", style: kSecondaryValueStyle),
                    Text("Gross", style: kTitleStyle),
                  ],
                ),
                // ignore: prefer_const_constructors
                VerticalDivider(
                  color: Color(0xffb10000),
                  thickness: 2,
                ),
                // ignore: prefer_const_constructors

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$40", style: kSecondaryValueStyle),
                    Text("Hourly ", style: kTitleStyle),
                  ],
                ),

              ],
            ),)

            

 

            

            

            
          ],
        ),
      ),
    );
  }
}