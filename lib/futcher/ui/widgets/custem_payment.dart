import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustemPayment extends StatefulWidget {
  const CustemPayment({super.key});

  @override
  State<CustemPayment> createState() => _CustemPaymentState();
}

class _CustemPaymentState extends State<CustemPayment> {
  int selectedIndex = -1; // -1 يعني مفيش حاجة متعلم عليها لسه

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ✅ الصورة الأولى
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
              border: Border.all(
                color: selectedIndex == 0 ? Colors.green : Colors.transparent,
                width: 3,
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/pyment/Group.svg",
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        const SizedBox(width: 30),

        // ✅ الصورة الثانية
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
              border: Border.all(
                color: selectedIndex == 1 ? Colors.green : Colors.transparent,
                width: 3,
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/pyment/strip/SVGRepo_iconCarrier.svg",
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
