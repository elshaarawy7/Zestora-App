import 'package:flutter/material.dart';

class CustemDriver extends StatelessWidget {
  const CustemDriver({super.key,});



  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Expanded(
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    ),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text("Or Login with"),
    ),

    Expanded(
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    ),
  ],
);

  }
}