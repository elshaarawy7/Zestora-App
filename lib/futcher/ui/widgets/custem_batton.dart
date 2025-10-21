import 'package:flutter/material.dart';
import 'package:zestora/core/utils/color_app.dart';

class CustomGreenButton extends StatelessWidget {
  final String text; // التكست المتغير
  final VoidCallback onPressed; // عشان تحدد الاكشن
  final bool isLoding;

  const CustomGreenButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoding = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // 75% من عرض الشاشة
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.grean, // اللون الأخضر
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // حواف ناعمة
          ),
        ),
        onPressed: onPressed,
        child: isLoding
            ? CircularProgressIndicator()
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white, // التكست أبيض
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
