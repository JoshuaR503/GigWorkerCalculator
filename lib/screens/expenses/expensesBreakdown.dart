import 'package:calc/screens/dashboard/helpers.dart';
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/shared/card.dart';
import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

const kBoxDecorationStyle = BoxDecoration(
  color: Color(0xffe9ebf3),
  borderRadius: BorderRadius.all(Radius.circular(4)),
);

class ExpensesBreakdown extends StatelessWidget {
  const ExpensesBreakdown({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business Expenses"),
        backgroundColor: kCoralRed, 
        bottomOpacity: 0.0, 
        elevation: 0.0
      ),
      body: SafeArea(
        child: Container(
          color: const Color(0xffe9ebf3),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  children: [

                    const DecorativeCard(
                      actionEnabled: false,
                      action: null,
                      title: "March 28 - April 3",
                      value: "\$6,300",
                    ),
                        
                    const SizedBox(height: 24),
  
                    buildExpensesCard(),
                    const SizedBox(height: 14),
                    buildExpensesCard(),
                  ],
                )
              )
            ),
          ),
        )
      ),
    );
  }
}