import 'package:calc/screens/expenses/expensesCard.dart';

import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Expenses extends StatelessWidget {
  const Expenses({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Expense"),
        backgroundColor: Color(0xffff3b3b), 
        bottomOpacity: 0.0, 
        elevation: 0.0
      ),
      body: Container(),
    );
    // return ScreenScaffold(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [

    //       const SizedBox(height: 24),
    //       const Text('Earnings\nBreakdown', style: screenTitle),
    //       const SizedBox(height: 24),

    //       _buildDashboardTotalExpensesCard(title: "Add gas expense", description: "Add cost of gas", icon: FontAwesomeIcons.droplet),
    //       const SizedBox(height: 16),

    //       _buildDashboardTotalExpensesCard(title: "Add an expense", description: "Add a custom expense", icon: FontAwesomeIcons.receipt),
    //       const SizedBox(height: 16),

    //       _buildDashboardTotalExpensesCard(title: "Add maintenance expense", description: "Add cost of maintenance", icon: FontAwesomeIcons.wrench),
    //       const SizedBox(height: 16),


    //     ],
    //   ),
    // );
  }

  Widget _buildDashboardTotalExpensesCard({
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
}