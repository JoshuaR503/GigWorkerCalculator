import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/screens/expenses/expensesCard.dart';

import 'package:calc/shared/screenScaffold.dart';
import 'package:calc/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kBoxDecorationStyle = BoxDecoration(
  color: Color(0xffe9ebf3),
  borderRadius: BorderRadius.all(Radius.circular(8)),

);

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
      body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      children: [
                        _buildFormField(),
                    const SizedBox(height: 24),
                    _buildFormField(),
                    const SizedBox(height: 24),
                    _buildFormField(),
                      ],
                    ),
                    const SizedBox(height: 48),
                                        _buildLoginBtn()              

                  ],

                )
              )
            ),
          ),
        ),
    );
  }

  Widget _buildFormField() {

    

 const kHintTextStyle = TextStyle( 
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w500, 
      color: Colors.black
    );


    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),

       Text("Expense name",style: breakdownSectionTitle),
        const SizedBox(height: 16),

        Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 60.0,
      // ignore: prefer_const_constructors
      child: TextField(
        style: kHintTextStyle,
        decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 14.0),
          border: InputBorder.none,
          hintText: "Expense Name",
          hintStyle: kHintTextStyle,
        ),
      ),
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
          primary: Color(0xffff3b3b),
          padding: EdgeInsets.all(8),
        ),
        onPressed: () {},
        child: Text(
          'Iniciar sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.5,
            fontWeight: FontWeight.w500,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }


}