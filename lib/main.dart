import 'package:calc/screens/expenses/expensesForm.dart';
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
        '/expensesForm': (context) => const ExpensesForm(),
        '/expensesBreakdown': (context) => const ExpensesBreakdown(),
      },
    );
  }
}
