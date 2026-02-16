import 'package:flutter/material.dart';
import 'package:loancalculator/widget/details_card.dart';
import '../widget/loan_amount_slider.dart';
import '../widget/loan_period_widget.dart';
import '../widget/apply_button.dart';

class LoanCalculatorScreen extends StatefulWidget {
  const LoanCalculatorScreen({super.key});

  @override
  State<LoanCalculatorScreen> createState() => _LoanCalculatorScreenState();
}

class _LoanCalculatorScreenState extends State<LoanCalculatorScreen> {
  double EGP = 1000;
  double months = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40455B),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Loan Calculator",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xff40455B),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const DetailsCard(),
            const SizedBox(
              height: 10,
            ),
            LoanAmountWidget(
              value: EGP,
              onChanged: (value) => setState(() => EGP = value),
            ),
            const SizedBox(height: 10),
            LoanPeriodWidget(
              value: months,
              onChanged: (value) => setState(() => months = value),
            ),
            const SizedBox(height: 30),
            ApplyButton(
              text: 'APPLY LOAN',
              EGP: EGP,
              months: months,
            ),
          ],
        ),
      ),
    );
  }
}
