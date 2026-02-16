import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../widget/card_Estimated _monthly .dart';
import '../widget/card_details_summary.dart';

class LoanSummary extends StatelessWidget {
  final double monthlyPayment;

  const LoanSummary({super.key, required this.monthlyPayment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40455B),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Loan Summary",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xff40455B),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EstimatedMonthlyInstallments(
                MonthLypayment: 'EGP ${monthlyPayment.toStringAsFixed(2)}',
              ),
              const SizedBox(
                height: 15,
              ),
              const CardDetailsSummary(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                    color: Color(0xff4A4F65),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'includes interest and administrative fees clicking conferm loan you agree to our terms and conditions',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 120,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.slider,
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'CONFIRM LOAN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
