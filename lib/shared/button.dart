import 'package:calc/shared/colors.dart';
import 'package:calc/shared/decorations.dart';
import 'package:flutter/material.dart';

class UniversalButton extends StatelessWidget {
  const UniversalButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kRoundedBoxDecoration,
      height: 54,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: kCoralRed,
          padding: const EdgeInsets.all(8),
        ),

        onPressed: () => callback(),
        child: const Text('Save', style: TextStyle(fontSize: 17.5),
        ),
      ),
    );
  }
}

