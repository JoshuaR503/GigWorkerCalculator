import 'package:flutter/material.dart';
import 'package:calc/shared/styles.dart';
import 'package:calc/shared/decorations.dart';

class ExpensesFormField extends StatelessWidget {

  const ExpensesFormField({
    Key? key,
    required this.title,
    required this.label,
    required this.controller,
  }) : super(key: key);

  final String title;
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(title, style: breakdownSectionTitle),

        const SizedBox(height: 16),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kRoundedBoxDecoration,
          height: 54.0,
          child: _buildTextField(),
        )
      ],
    );
  }

  TextField _buildTextField() {

    const kHintTextStyle = TextStyle( 
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400, 
      color: Colors.black45
    );

    return TextField(
      controller: controller,
      style: kHintTextStyle, 
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 14.0),
        border: InputBorder.none,
        hintText: label,
        hintStyle: kHintTextStyle,              
      )
    );
  }
}
