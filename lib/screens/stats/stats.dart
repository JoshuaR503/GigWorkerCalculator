
import 'package:calc/models/financeSummary.model.dart';
import 'package:calc/shared/styles.dart';
import 'package:calc/screens/stats/statsCard.dart';
import 'package:calc/shared/card.dart';
import 'package:calc/shared/financesSummaryCard.dart';
import 'package:calc/screens/earnings/earningsChart.dart';
import 'package:calc/screens/earnings/earningsHistoryCard.dart';
import 'package:calc/screens/expenses/expensesCard.dart';
import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class EarningsStats extends StatefulWidget {
  const EarningsStats({ Key? key }) : super(key: key);

  @override
  State<EarningsStats> createState() => _EarningsStatsState();
}

class _EarningsStatsState extends State<EarningsStats> {
  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          const SizedBox(height: 24),
          _buildScreenTitle(),

          const SizedBox(height: 8),
          _buildScreenSubtitle(),

          const SizedBox(height: 14),

          const StatsCard(
            title: "Total Earnings",
            value: "\$6,300",
          ),
          
          const SizedBox(height: 14),
          const StatsCard(
            title: "Total Expenses",
            value: "\$300",
          ),

          const SizedBox(height: 14),
          const StatsCard(
            title: "Hours worked | hourly earnings",
            value: "208 hours | \$40/h",
          ),
          const SizedBox(height: 14),
          const StatsCard(
            title: "Miles driven | earnings per mile",
            value: "593 miles | \$4",
          ),
          const SizedBox(height: 16),
          const BarChartSample2(),

          // const BarChartSample2(),

        ],
      ),
    );
  }

  Text _buildScreenTitle() => const Text('Earnings\nStatistics', style: screenTitle);

  Text _buildScreenSubtitle() {
    return Text('March 28 - April 3', style: screenTitle.copyWith(
      fontSize: 20,
      color: Colors.black45,
    ));
  }


}
