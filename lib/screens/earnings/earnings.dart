
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/earnings/earningsCard.dart';
import 'package:calc/screens/earnings/earningsChart.dart';
import 'package:calc/screens/expenses/expensesCard.dart';
import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Earnings extends StatelessWidget {
  const Earnings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [

          const SizedBox(height: 24),
          const Text('Weekly Earnings', style: screenTitle),
          const SizedBox(height: 24),


          _buildPortfolioSubtitle(title: 'Earnings History', action: () {}),
          const SizedBox(height: 14),

          const BarChartSample2(),
          const SizedBox(height: 8),

          Divider(
            color: Color(0XFFffd7d7),
            thickness: 1,
          ),
          
          const SizedBox(height: 8),

          _buildPortfolioSubtitle(title: 'Earnings Summary', action: () {}),
          const SizedBox(height: 14),

          _buildDashboardTotalEarningsCard(title: "Total Earnings", value: 4320),

          const SizedBox(height: 14),

          Divider(
            color: Color(0XFFffd7d7),
            thickness: 2,
          ),

          const SizedBox(height: 8),

        
          _buildPortfolioSubtitle(title: 'Add Earnings', action: () {}),
          const SizedBox(height: 14),
          

          _buildDashboardAddExpensesCard(title: "Add weekly earnings", description: "Earnings this week", icon: FontAwesomeIcons.moneyBill1Wave),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add hours worked", description: "Amount of hours worked", icon: FontAwesomeIcons.car),
          const SizedBox(height: 14),

            _buildDashboardAddExpensesCard(title: "Add miles driven", description: "Amount of hours worked", icon: FontAwesomeIcons.road),
          const SizedBox(height: 14),

          

        ],
      ),
    );
  }

  Widget _buildDashboardTotalEarningsCard({required String title, required int value}) {
    // ignore: prefer_const_constructors
    return EarningsCard(
      actionEnabled: false,
      action: null,
      title: title,
      value: "\$${NumberFormat().format(value)}",
    );
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

  Widget _buildPortfolioSubtitle({required String  title, Function? action }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Text(title,style: breakdownSectionTitle)),
        GestureDetector(
          child: const Text('Ver todos', style: breakdownSectionTitleAction ),
          onTap: () {},
        )
      ],
    );
  }




}