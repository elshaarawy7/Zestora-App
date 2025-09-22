import 'package:flutter/material.dart';

class CustemCatogory extends StatefulWidget {
  const CustemCatogory({super.key});

  @override
  State<CustemCatogory> createState() =>
      _CustemCatogoryState();
}

class _CustemCatogoryState extends State<CustemCatogory> {
  int selectedIndex = -1; // 👈 -1 يعني مفيش حاجة متعلم عليها لسه

  final List<String> categories = [ 
    "All"  ,
    "Pizaa",
    "Burger" ,
    "Fried Chiken",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index; // ✅ يخلي الجديد Selected
            });
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width:80 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFFFFFF),
              border: Border.all(
                color: selectedIndex == index ? Colors.green : Colors.grey, // ✅ واحد بس
                width: 3,
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
              child: Text(
                categories[index],
                style: TextStyle(
                  color: selectedIndex == index ? Colors.green : Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12 , 
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
} 
