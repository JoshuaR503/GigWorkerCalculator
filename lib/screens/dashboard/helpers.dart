import 'package:calc/screens/dashboard/styles.dart';
import 'package:calc/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildExpensesCard() {
  return Container(

    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 0, color: Colors.transparent),
      borderRadius: const BorderRadius.all(Radius.circular(4))
    ),
    child: Column(
      children: [
        
        _buildItemCardTitle(),
        const SizedBox(height: 8),
        const Divider(
          color: Color(0xffdee1f5),
          thickness: 1.5,
        ),
        const SizedBox(height: 8),
        _buildItemCardBody(title: "Gas Station", description: "\$6.54 per gallon", cost: 6.45, icon: FontAwesomeIcons.droplet),
        const SizedBox(height: 18),
        _buildItemCardBody(title: "Gas Station", description: "\$6.54 per gallon", cost: 6.45, icon: FontAwesomeIcons.droplet),
        const SizedBox(height: 18),
        _buildItemCardBody(title: "Gas Station", description: "\$6.54 per gallon", cost: 6.45, icon: FontAwesomeIcons.droplet),
        const SizedBox(height: 18),
        _buildItemCardBody(title: "Car maintenance", description: "Oil change", cost: 6.45, icon: FontAwesomeIcons.wrench),
      ],
    ),
  );
}

 Widget _buildItemCardTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Tuesday, 14", style: breakdownCardTitleStyle),
        Text("-\$32", style: breakdownCardTitleStyle)
      ],
    );
  }

  Widget _buildItemCardBody({
    required String title, 
    required String description, 
    required IconData icon,
    required double cost
  }) {

    final TextStyle breakdownDescriptionStyle = breakdownTitleStyle.copyWith(color: Colors.black54);
    
    final Widget kBreakdownIcon = Container(
      height: 48,
      width: 48,
      padding: const EdgeInsets.all(14),
      child: FaIcon(icon, color: const Color(0XFFffd7d7),),
      decoration: const BoxDecoration(
        color: kCoralRed,
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
    );

    final Widget kBreakdownDescription = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: breakdownTitleStyle),
        Text(description, style: breakdownDescriptionStyle),
      ],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row( children: [kBreakdownIcon, const SizedBox(width: 10), kBreakdownDescription] ),
        Row( children: [
            Text("-\$${cost.toString()}", style: breakdownCardTitleStyle.copyWith(color: const Color(0XFFff7575))),
          ],
        )
      ],
    );
  }

