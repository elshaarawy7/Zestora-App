import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardWidgetCustom extends StatefulWidget {
  const CreditCardWidgetCustom({super.key});

  @override
  State<CreditCardWidgetCustom> createState() => _CreditCardWidgetCustomState();
}

class _CreditCardWidgetCustomState extends State<CreditCardWidgetCustom> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  final formkay = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isCvvFocused, // لو المستخدم بيكتب الـ CVV
          onCreditCardWidgetChange: (CreditCardBrand brand) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel data) {
            setState(() {
              cardNumber = data.cardNumber;
              expiryDate = data.expiryDate;
              cardHolderName = data.cardHolderName;
              cvvCode = data.cvvCode;
              isCvvFocused = data.isCvvFocused;
            });
          },
          formKey: formkay,
        ),
      ],
    );
  }
}
