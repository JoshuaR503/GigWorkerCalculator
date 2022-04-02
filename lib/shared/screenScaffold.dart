
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

class ScreenScaffold extends StatelessWidget {

  final Widget child;

  const ScreenScaffold({Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          color: const Color(0xfff2f1f6),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: FadeIn(
                duration: const Duration(milliseconds: 300),
                child: child
              )
            ),
          ),
        ),
      )
    );
  }
}