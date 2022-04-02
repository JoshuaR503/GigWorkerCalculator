// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:calc/models/financeSummary.model.dart';
import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FinancesSummaryCard extends StatelessWidget {

  final List<FinanceSummary> dataPoints;

  const FinancesSummaryCard({Key? key, 
    required this.dataPoints,
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
      fontSize: 18.0,
      height: 1.5,
      letterSpacing: -1,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    final k = dataPoints.map<Widget>((e) => Row(
        children: [
          Column(
        
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(e.label, style: kTitleStyle),
              Text("\$${NumberFormat().format(e.value)}", style: kValueStyle),
            ],
          ),

          const SizedBox(width: 16,),
          !e.last ? const VerticalDivider(color: Color(0xffb10000), thickness: 1) : Container(),
        ],
      )
    ).toList();

    return GestureDetector(
      onTap: () {},
      child:  Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: const BoxDecoration(color: kCoralRed, borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: k
              )
            ),
          ]
        ),
      ),
    );
  }
}