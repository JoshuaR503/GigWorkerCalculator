import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/expenses/expensesCard.dart';
import 'package:calc/shared/card.dart';
import 'package:calc/shared/screenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:calc/styles/typography.dart';
import 'package:calc/screens/dashboard/helpers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@immutable
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          const Text('Dashboard', style: screenTitle),
          const SizedBox(height: 24),

          _buildDashboardTotalExpensesCard(),
          const SizedBox(height: 14),

          _buildPortfolioSubtitle(title: 'Add Expenses', action: () {}),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add gas expense", description: "Add cost of gas", icon: FontAwesomeIcons.droplet),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add an expense", description: "Add a custom expense", icon: FontAwesomeIcons.receipt),
          const SizedBox(height: 14),

          _buildDashboardAddExpensesCard(title: "Add maintenance expense", description: "Add cost of maintenance", icon: FontAwesomeIcons.wrench),
          const SizedBox(height: 14),

          _buildPortfolioSubtitle(title: 'Expenses Breakdown', action: () {}),

          const SizedBox(height: 14),
          buildExpensesCard(),

          const SizedBox(height: 14),
          buildExpensesCard()
        ]
      )
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

  Widget _buildDashboardTotalExpensesCard() {
    return DecorativeCard(
      actionEnabled: false,
      action: null,
      title: "Total expenses this week",
      value: "\$6,300",
    );
  }

  Widget _buildDashboardTotalEarningsCard() {
    return DecorativeCard(
      actionEnabled: false,
      action: null,
      title: "Total earnings this week",
      value: "\$16,300",
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
