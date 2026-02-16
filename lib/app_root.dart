import 'package:flutter/material.dart';
import 'package:loancalculator/screens/loan_calculator.dart';

class LoanCalculator extends StatelessWidget {
  const LoanCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoanCalculatorScreen(),
    );
  }
}
