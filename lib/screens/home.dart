import 'package:calc/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> tabs = [
    const FadeIn(duration: Duration(milliseconds: 700), child: Dashboard()),
    const FadeIn(duration: Duration(milliseconds: 700), child: Dashboard()),
    const FadeIn(duration: Duration(milliseconds: 700), child: Dashboard()),
    const FadeIn(duration: Duration(milliseconds: 700), child: Dashboard()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f1f6),
      body: tabs.elementAt(_selectedIndex),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SalomonBottomBar(
            
            currentIndex: _selectedIndex,
            onTap: (i) => setState(() => _selectedIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const FaIcon(FontAwesomeIcons.user),
                title: const Text("Home"),
                selectedColor: Colors.red
              ),

              /// Home
              SalomonBottomBarItem(
                icon: const FaIcon(FontAwesomeIcons.chartPie),
                title: const Text("Statistics"),
                selectedColor: Colors.red
              ),

              /// Home
              SalomonBottomBarItem(
                icon: const FaIcon(FontAwesomeIcons.wallet),
                title: const Text("Portafolio"),
                selectedColor: Colors.red
              ),


              /// Home
              SalomonBottomBarItem(
                icon: const FaIcon(FontAwesomeIcons.solidSquarePlus),
                title: const Text("Portafolio"),
                selectedColor: Colors.red
              ),
            ],
          )
        )
      ),
    );
  }
}