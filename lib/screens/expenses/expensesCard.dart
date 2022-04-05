import 'package:calc/models/financeType.dart';
import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/expenses/expensesForm.dart';
import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpensesCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final FinanceType financeType;

  const ExpensesCard({Key? key, 
    required this.title,
    required this.description,
    required this.icon,
    required this.financeType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.pushNamed(context, '/expensesForm', arguments: financeType),
      
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => ExpensesForm(financeType: financeType)),
        );
      },
      child:  Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildCardIcon(),
            _buildCardInfo(),
            _buildCardAction()
          ],
        ),
      ),
    );
  }

  Expanded _buildCardInfo() {
    final TextStyle breakdownDescriptionStyle = breakdownTitleStyle.copyWith(color: Colors.black54);

    return Expanded(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: breakdownTitleStyle),
        Text(description, style: breakdownDescriptionStyle),
      ],
    ));
  }

  Container _buildCardIcon() {
    return Container(
      height: 48,
      width: 48,

      child: FaIcon(icon, color: kLightCoralRed),
      alignment: Alignment.center,

      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 16),

      decoration: const BoxDecoration(
        color: kCoralRed,
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
    );
  }

  Container _buildCardAction() {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: const FaIcon(FontAwesomeIcons.chevronRight, color: Colors.black38, size: 16,),
    );
  }
}