
import 'package:calc/shared/styles.dart';
import 'package:flutter/material.dart';

class EarningsHistoryCard extends StatelessWidget {

  final String dateRange;
  final String totalAmount;

  const EarningsHistoryCard({ Key? key,
    required this.dateRange, 
    required this.totalAmount  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dateRange, style: breakdownTitleStyle),
            Text(totalAmount, style: breakdownTitleStyle.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}