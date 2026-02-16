import 'package:flutter/material.dart';

import '../constants/color.dart';

class LoanPeriodWidget extends StatelessWidget {
  final double value;
  final void Function(double) onChanged;

  const LoanPeriodWidget({
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
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Loan Period",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white54),
                  ),
                  Text(
                    "${value.toStringAsFixed(1)} Months",
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
              min: 3,
              max: 36,
              divisions: 12,
              activeColor: AppColors.slider,
              onChanged: onChanged,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3 months",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white54),
                  ),
                  Text(
                    "36 Months",
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
