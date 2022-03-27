import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

const kBoxDecorationStyle = BoxDecoration(
  color: Color(0xffe9ebf3),
  borderRadius: BorderRadius.all(Radius.circular(4)),
);

class Expenses extends StatelessWidget {
  const Expenses({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Expense"),
        backgroundColor: kCoralRed, 
        bottomOpacity: 0.0, 
        elevation: 0.0
      ),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Column(
          children: [
            _buildFormField(title: "Expense Title", label: "Write the title of the expense"),
            const SizedBox(height: 8),
            _buildFormField(title: "Expense Cost", label: "Write the cost of the expense"),
            const SizedBox(height: 8),
            _buildFormField(title: "Expense Description", label: "Add a brief description"),
          ],
        ),
        const SizedBox(height: 48),
        _buildLoginBtn()
      ],
    );
  }

  Widget _buildFormField({
    required String title, 
    required String label
  }) {

    const kHintTextStyle = TextStyle( 
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400, 
      color: Colors.black45
    );

    final InputDecoration kFormDecoration = InputDecoration(
      contentPadding: const EdgeInsets.only(left: 14.0),
      border: InputBorder.none,
      hintText: label,
      hintStyle: kHintTextStyle,              
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(title, style: breakdownSectionTitle),

        const SizedBox(height: 16),

        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: TextField(style: kHintTextStyle, decoration: kFormDecoration),
          height: 60.0,
        )
      ],
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      decoration: kBoxDecorationStyle,
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: kCoralRed,
          padding: const EdgeInsets.all(8),
        ),

        onPressed: () {},
        child: const Text('Save', style: TextStyle(fontSize: 17.5),
        ),
      ),
    );
  }


}