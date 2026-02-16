import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../screens/loan_summary.dart';

class ApplyButton extends StatelessWidget {
  final String text;
  final double EGP;
  final double months;

  const ApplyButton({
    super.key,
    required this.text,
    required this.EGP,
    required this.months,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.slider,
        ),
        onPressed: () {
          double interestRate = 0.12;
          double monthlyPayment =
              (EGP + (EGP * interestRate * (months / 12))) / months;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoanSummary(monthlyPayment: monthlyPayment),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
