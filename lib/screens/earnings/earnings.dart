
import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';

class Earnings extends StatelessWidget {
  const Earnings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [

          SizedBox(height: 24),
          Text('Earnings\nBreakdown', style: screenTitle),
          SizedBox(height: 24),

        ],
      ),
    );
  }


}