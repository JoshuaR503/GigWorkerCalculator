import 'package:calc/screens/dashboard/helpers.dart';
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/earnings/earningsChart.dart';
import 'package:calc/screens/earnings/earningsHistoryCard.dart';
import 'package:calc/shared/card.dart';
import 'package:calc/shared/colors.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

const kBoxDecorationStyle = BoxDecoration(
  color: Color(0xffe9ebf3),
  borderRadius: BorderRadius.all(Radius.circular(4)),
);

class EarningsHistory extends StatelessWidget {
  
  const EarningsHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Earnings Breakdown"),
        backgroundColor: kCoralRed, 
        bottomOpacity: 0.0, 
        elevation: 0.0
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          color: const Color(0xffe9ebf3),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const DecorativeCard(
                      actionEnabled: false,
                      action: null,
                      title: "March 28 - April 3",
                      value: "Earnings: \$6,300",
                    ),
                    const SizedBox(height: 16),

                    const DecorativeCard(
                      actionEnabled: false,
                      action: null,
                      title: "Hours worked | hourly earnings",
                      value: "208 hours | \$40/h",
                    ),

                    const SizedBox(height: 16),

                    const DecorativeCard(
                      actionEnabled: false,
                      action: null,
                      title: "Miles driven | earnings per mile",
                      value: "593 miles | \$4",
                    ),
                        
                    const SizedBox(height: 16),


                    _buildItemCardTitle("Last 6 month earnings"),
                    const SizedBox(height: 16),
                    const BarChartSample2(),

                    Column(
                      children: const [
                        EarningsHistoryCard(dateRange: "Mar 21 -  Mar 27", totalAmount: "\$230.25",),
                        EarningsHistoryCard(dateRange: "Mar 14 - Mar 20", totalAmount: "\$575.13",),
                        EarningsHistoryCard(dateRange: "Mar 14 - Mar 20", totalAmount: "\$575.13",),
                        EarningsHistoryCard(dateRange: "Mar 21 -  Mar 27", totalAmount: "\$230.25",),
                        EarningsHistoryCard(dateRange: "Mar 14 - Mar 20", totalAmount: "\$575.13",),
                      ],
                    ),
                  ],
                )
              )
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemCardTitle(String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: breakdownCardTitleStyle),
      ],
    );
  }
}