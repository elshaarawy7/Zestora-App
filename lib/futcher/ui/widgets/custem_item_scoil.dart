import 'package:flutter/material.dart';

class CustemItemScoil extends StatelessWidget {
  const CustemItemScoil({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(75),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(image, fit: BoxFit.contain, height: 50, width: 50),
      ),
    );
  }
}
