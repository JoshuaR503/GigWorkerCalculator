
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/earnings/earningsCard.dart';
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
          const Text('Earnings\nSummary', style: screenTitle),
          const SizedBox(height: 8),

          Text('March 28 - April 3', style: screenTitle.copyWith(
            fontSize: 20,
            color: Colors.black45,
          )),

          const SizedBox(height: 24),

          _buildDashboardTotalEarningsCard(),
          const SizedBox(height: 28),

          _buildPortfolioSubtitle(title: 'Earnings History', route: '/'),
          const SizedBox(height: 14),


          Column(

            children: const [
              EarningsHistoryCard(),
              EarningsHistoryCard()
            ],
          ),

          // const BarChartSample2(),

          
          const SizedBox(height: 14),

          // _buildPortfolioSubtitle(title: 'Add Earnings', route: '/'),
          // const SizedBox(height: 14),
          
          _buildDashboardAddExpensesCard(title: "Add weekly earnings", description: "Earnings this week", icon: FontAwesomeIcons.moneyBill1Wave),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add hours worked", description: "Amount of hours worked", icon: FontAwesomeIcons.car),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add miles driven", description: "Amount of hours worked", icon: FontAwesomeIcons.road),
          const SizedBox(height: 28),


          _buildPortfolioSubtitle(title: 'Add expenses', route: '/expensesBreakdown'),
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

  Widget _buildDashboardTotalEarningsCard() {
    // ignore: prefer_const_constructors
    return EarningsActionCard();
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

  Widget _buildPortfolioSubtitle({required String  title, required String route }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Text(title,style: breakdownSectionTitle)),
        GestureDetector(
          child: const Text('breakdown', style: breakdownSectionTitleAction ),
          onTap: () {
            Navigator.pushNamed(context, route);
          },
        )
      ],
    );
  }
}