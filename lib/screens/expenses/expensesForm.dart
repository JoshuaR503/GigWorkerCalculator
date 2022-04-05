import 'package:calc/models/financeType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

import 'package:calc/screens/expenses/expensesFormField.dart';
import 'package:calc/shared/button.dart';
import 'package:calc/shared/colors.dart';

class ExpensesForm extends StatefulWidget {

  const ExpensesForm({ 
    Key? key,
    required this.financeType 
  }) : super(key: key);

  final FinanceType financeType; 

  @override
  State<ExpensesForm> createState() => _ExpensesFormState();
}

class _ExpensesFormState extends State<ExpensesForm> {

  final TextEditingController _expenseTitleField = TextEditingController();
  final TextEditingController _expenseCostField = TextEditingController();
  final TextEditingController _expenseDescriptionField = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    _expenseTitleField.dispose();
    _expenseCostField.dispose();
    _expenseDescriptionField.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final AppBar appBar = AppBar(
      title: const Text("New Expense"),
      backgroundColor: kCoralRed, 
      bottomOpacity: 0.0, 
      elevation: 0.0
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: FadeIn(
              duration: const Duration(milliseconds: 300),
              child: _buildForm()
            )
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        Column(
          children:  [
            const SizedBox(height: 8),
            ExpensesFormField(
              title: "Expense Title ${widget.financeType.toString()}", 
              label: "Write the title of the expense", 
              controller: _expenseTitleField
            ),

            const SizedBox(height: 8),
            ExpensesFormField(
              title: "Expense Cost", 
              label: "Write the cost of the expense", 
              controller: _expenseCostField
            ),

            const SizedBox(height: 8),
            ExpensesFormField(
              title: "Expense Description", 
              label: "Add a brief description", 
              controller: _expenseDescriptionField
            ),
          ],
        ),
        const SizedBox(height: 24),
        
        UniversalButton(callback: formCallback)
      ],
    );
  }

  void formCallback() {}
  
}

