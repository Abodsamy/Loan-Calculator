import 'package:flutter/material.dart';
import 'package:loancalculator/constants/color.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xff3A6373),
            width: 3,
          ),
        ),
        color: AppColors.cardDetails,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff3A6373).withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.directions_bike,
                  size: 30,
                  color: Color(0xff42BDC1),
                ),
              ),
              title: const Text(
                "Vehicle Details",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54),
              ),
              subtitle: const Text(
                "Nissan Sunny 2026",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Maximum Funding",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white54),
                ),
                Text(
                  "EGP 17,484.50",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.slider,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
