
import 'package:calc/models/financeSummary.model.dart';
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/shared/financesSummaryCard.dart';
import 'package:calc/screens/earnings/earningsChart.dart';
import 'package:calc/screens/earnings/earningsHistoryCard.dart';
import 'package:calc/screens/expenses/expensesCard.dart';
import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Earnings extends StatefulWidget {
  const Earnings({ Key? key }) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
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

          const SizedBox(height: 24),

          _buildDashboardTotalEarningsCard(),
          const SizedBox(height: 24),

          _buildPortfolioSubtitle(title: 'Earnings History', subtitle: 'See breakdown', route: '/earningsHistory'),
          const SizedBox(height: 14),


          Column(
            children: const [
              EarningsHistoryCard(dateRange: "Mar 21 -  Mar 27", totalAmount: "\$230.25",),
              EarningsHistoryCard(dateRange: "Mar 14 - Mar 20", totalAmount: "\$575.13",)
            ],
          ),
          const SizedBox(height: 14),

          // const BarChartSample2(),

          _buildDashboardAddExpensesCard(title: "Add weekly earnings", description: "Earnings this week", icon: FontAwesomeIcons.moneyBill1Wave),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add hours worked", description: "Amount of hours worked", icon: FontAwesomeIcons.clock),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add miles driven", description: "Amount of hours worked", icon: FontAwesomeIcons.car),
          const SizedBox(height: 28),


          _buildPortfolioSubtitle(title: 'Add expenses', subtitle: 'See breakdown', route: '/expensesBreakdown'),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add gas expense", description: "Add cost of gas", icon: FontAwesomeIcons.droplet),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add an expense", description: "Add a custom expense", icon: FontAwesomeIcons.receipt),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add maintenance expense", description: "Add cost of maintenance", icon: FontAwesomeIcons.wrench),
          const SizedBox(height: 14),
        ],
      ),
    );
  }

  Text _buildScreenTitle() => const Text('Earnings\nSummary', style: screenTitle);

  Text _buildScreenSubtitle() {
    return Text('March 28 - April 3', style: screenTitle.copyWith(
      fontSize: 20,
      color: Colors.black45,
    ));
  }

  Widget _buildDashboardTotalEarningsCard() {
    return FinancesSummaryCard(dataPoints: [
      FinanceSummary(label: "Revenue", value: 4018),
      FinanceSummary(label: "Profit", value: 3823),
      FinanceSummary(label: "Expenses", value: 240, last: true),
    ]);
  }

  Widget _buildDashboardAddExpensesCard({
    required String title,
    required String description, 
    required IconData icon
  }) {
    return ExpensesCard(
      title: title,
      description: description,
      icon: icon
    );
  }

  Widget _buildPortfolioSubtitle({
    required String title, 
    required String subtitle, 
    required String route
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Text(title,style: breakdownSectionTitle)),
        GestureDetector(
          child: Text(subtitle, style: breakdownSectionTitleAction ),
          onTap: () => Navigator.pushNamed(context, route)
        )
      ],
    );
  }
}
