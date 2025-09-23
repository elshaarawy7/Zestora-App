import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/widgets/List_view_builder_card_prodact.dart';
import 'package:zestora/futcher/ui/widgets/custem_catogry.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 75),

            CustomTextField(
              hintText: "search",
              obscureText: false,
              prefixIcon: Icons.search,
            ),

            SizedBox(height: 20),

            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            CustemCatogory(), 
            SizedBox(height: 20,) , 
        SizedBox(
          height: 300,
          child: ListViewBuilderCardProdact())
            
        ]
    )
      )
    );
  }
}
 

 
