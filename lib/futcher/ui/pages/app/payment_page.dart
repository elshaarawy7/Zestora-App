import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zestora/futcher/ui/widgets/custem_payment.dart';

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
           CustemPayment() ,

          ],
        ),
      ),
    );
  }
}
