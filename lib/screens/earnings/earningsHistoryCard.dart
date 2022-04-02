


import 'package:calc/screens/dashboard/styles.dart';
import 'package:flutter/material.dart';

class EarningsHistoryCard extends StatelessWidget {
  const EarningsHistoryCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        margin: EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("Mar 28- Apr 3", style: breakdownTitleStyle),
            Text("\$302.19", style: breakdownTitleStyle.copyWith(fontWeight: FontWeight.bold)),


          ],
        ),


      ),

    );
  }
}