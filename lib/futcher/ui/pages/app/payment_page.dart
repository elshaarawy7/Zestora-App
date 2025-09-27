import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 100),
           Container(
  height: 100,
  width: 100,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.grey[200],
  ),
  child: Center(
    child: SizedBox(
      height: 75, // 👈 حجم أصغر
      width: 75,
      child: SvgPicture.asset(
        "assets/pyment/Group.svg",
        fit: BoxFit.contain, // 👈 يخليها تتظبط جوه الـ SizedBox
      ),
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
