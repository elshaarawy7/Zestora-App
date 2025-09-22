import 'package:flutter/material.dart';

class CustemCatogry extends StatefulWidget {
  const CustemCatogry({super.key});

  @override
  State<CustemCatogry> createState() => _CustemCatogryState();
}

class _CustemCatogryState extends State<CustemCatogry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, 
      width: 80, 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: const Color(0xFFFFFFFF),
    border: Border.all(
      color: Colors.green, // ✅ لون الحواف أخضر
      width: 2,            // سمك الحافة
    ),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 5,
        offset: Offset(0, 2),
      ),
    ],
  ), 
  child: Center(
    child: Text("All" , style: TextStyle(
      color: Colors.black , 
      fontSize: 15 , 
      fontWeight: FontWeight.w500 
    ),),
  ),
);

  }
}