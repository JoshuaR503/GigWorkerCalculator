import 'package:calc/screens/earnings/earningsHistory.dart';
import 'package:calc/screens/expenses/expensesBreakdown.dart';
import 'package:calc/screens/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomeScreen(),
      routes: {
        '/': (context) => const HomeScreen(),
        '/expensesBreakdown': (context) => const ExpensesBreakdown(),
        '/earningsHistory': (context) => const EarningsHistory(),
      },
    );
  }
}
