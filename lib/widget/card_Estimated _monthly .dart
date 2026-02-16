import 'package:flutter/material.dart';
import 'package:loancalculator/constants/color.dart';

class EstimatedMonthlyInstallments extends StatelessWidget {
  final String MonthLypayment;

  EstimatedMonthlyInstallments({super.key, required this.MonthLypayment});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xff3A6373),
            width: 3,
          ),
        ),
        color: AppColors.card,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Estimated monthly installments ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white54),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              MonthLypayment,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff42BDC1)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "/ month",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white54),
            )
          ],
        ),
      ),
    );
  }
}
