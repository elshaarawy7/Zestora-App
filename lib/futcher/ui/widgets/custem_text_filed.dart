import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final String? Function(String?)? validator; // 👈 هنا الفالديتور
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // الخلفية أبيض
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // الحواف
          borderSide: const BorderSide(color: Colors.black), // أسود
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
