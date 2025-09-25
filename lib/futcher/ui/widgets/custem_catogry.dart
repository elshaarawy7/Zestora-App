import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';

class CustemCatogory extends StatefulWidget {
  const CustemCatogory({super.key});

  @override
  State<CustemCatogory> createState() => _CustemCatogoryState();
}

class _CustemCatogoryState extends State<CustemCatogory> {
  int selectedIndex = -1; // 👈 -1 يعني مفيش حاجة متعلم عليها لسه

  final List<Map<String, dynamic>> categories = [
    {
      "name": "All",
      "image":
          "assets/catogries/0e86e8db69785e25c6aee709fb249fb4ba056920.jpg", 
      "route":AppRouter.KAllProdact   
    },
    {
      "name": "Pizza",
      "image": "assets/catogries/ef8dd5edf6100579125f303fe5259e7967ff5ddc.jpg",
      "route":AppRouter.KPizaaProdact
    },
    {
      "name": "Burger",
      "image": "assets/catogries/3e1e7f9d03a62022acc68f46396ea5a5a96188b1.jpg",
    },
    {
      "name": "Fried Chiken",
      "image": 'assets/catogries/df6686362ccfee3dd5891eb7c2c64010b8aa7aa7.jpg',
    },
    {
      "name": "Pasta",
      "image": "assets/catogries/0e86e8db69785e25c6aee709fb249fb4ba056920.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.go(categories[index]['route']);
            },
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 40,
                  
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ), // 👈 بدل width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: selectedIndex == index
                          ? Colors.green
                          : Colors.grey, // ✅ واحد بس
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        Image.asset(
                          categories[index]['image'],
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 3),
                
                        Center(
                          child: Text(
                            categories[index]['name'],
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.green
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
