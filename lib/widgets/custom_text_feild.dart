import 'package:flutter/material.dart';
import 'package:profile_dashboard/helpers/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final TextEditingController controller;
  const CustomTextFeild({
    super.key,
    required this.hint,
    required this.icon,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppConstants.primaryColor),
        ),
        filled: true,

        fillColor: Color.fromARGB(175, 238, 235, 235),
        suffixIconColor: Colors.grey,
        suffixIcon: Icon(icon),
      ),
    );
  }
}
