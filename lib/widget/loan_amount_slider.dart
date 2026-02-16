import 'package:flutter/material.dart';

import '../constants/color.dart';

class LoanAmountWidget extends StatelessWidget {
  final double value;
  final void Function(double) onChanged;

  const LoanAmountWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Card(
        color: const Color(0xff353A4E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Loan Amount",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white54),
                  ),
                  Text(
                    "EGP ${value.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColors.slider,
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              value: value,
              min: 1000,
              max: 17500,
              divisions: 100,
              activeColor: AppColors.slider,
              onChanged: onChanged,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Min EGP 1K",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white54),
                  ),
                  Text(
                    "Max EGP 17,5K",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
