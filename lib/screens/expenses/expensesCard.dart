import 'package:calc/screens/dashboard/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpensesCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  final Color color;

  // ignore: prefer_const_constructors_in_immutables
  ExpensesCard({Key? key, 
    required this.title,
    required this.description,
    required this.icon,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle breakdownDescriptionStyle = breakdownTitleStyle.copyWith(color: Colors.black54);

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/expenses'),
      child:  Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: <Widget>[

            Container(
              height: 48,
              width: 48,
              padding: const EdgeInsets.all(14),
              child: FaIcon(icon, color: Color(0XFFffd7d7),),
              decoration: const BoxDecoration(
                color: Color(0xffff3b3b),
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            ),
                
            const SizedBox(width: 16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: breakdownTitleStyle),
                Text(description, style: breakdownDescriptionStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}