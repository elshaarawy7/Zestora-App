import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustemPayment extends StatelessWidget {
  const CustemPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        ),  

        SizedBox(width: 30,) , 

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
        ),
      ],
    );
  }
}