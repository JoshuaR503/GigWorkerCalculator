import 'package:calc/screens/dashboard/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

import 'package:calc/shared/card.dart';
import 'package:calc/styles/typography.dart';
import 'package:calc/screens/dashboard/helpers.dart';

@immutable
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff2f1f6),
        child: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24),
                    const Text('Dashboard', style: screenTitle),

                    const SizedBox(height: 24),
                    _buildDashboardTotalExpensesCard(),   

                    const SizedBox(height: 14),
                    _buildPortfolioSubtitle(
                      title: 'Expenses Breakdown', 
                      action: () {}
                    ),

                    const SizedBox(height: 14),
                    buildExpensesCard(),

                    const SizedBox(height: 14),
                    buildExpensesCard()
                  ]
                )
              ),
            )
          ),
        ),
      ),
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
