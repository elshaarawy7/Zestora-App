import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';
import 'package:zestora/futcher/ui/widgets/custem_created_card.dart';
import 'package:zestora/futcher/ui/widgets/custem_payment.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              SizedBox(height: 100),
              CustemPayment(),

              SizedBox(height: 50),
              CreditCardWidgetCustom(),
              SizedBox(height: 20),
              CustomGreenButton(text: "Bay Now", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
