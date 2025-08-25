import 'package:flutter/material.dart';
import 'package:profile_dashboard/helpers/constants.dart';
import 'package:profile_dashboard/screens/services_screen.dart';

class SectionWidget extends StatelessWidget {
  String title;
  SectionWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServicesScreen()),
            );
          },

          child: Text(
            'ALL',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
