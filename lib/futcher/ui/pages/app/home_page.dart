import 'package:flutter/material.dart';
import 'package:zestora/core/utils/color_app.dart';
import 'package:zestora/futcher/ui/widgets/custem_catogry.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';
import 'package:zestora/futcher/ui/widgets/prodact_list_screan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = "All";

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
              height: 175,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff4E4B4B),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Stack(
                  // alignment: ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Now with",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Positioned(
                            top: 30,
                            child: Text(
                              "Free Delivery",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ), 

                          SizedBox(height: 5,) ,

                          Text("Delicious Food, Free order" , style: TextStyle(
                            color: Colors.white  , 
                            fontSize: 16 , 
                          ),) , 

                          SizedBox(height: 5,) ,

                          Container(
                            height:45 ,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorApp.grean,
                            ),
                            child: Center(
                              child: Text("Order Now" , style: TextStyle(
                                color: Colors.white , 
                                fontSize: 18
                              ), 
                              textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      left: 250,
                      child: Image.asset(
                        "assets/b5930dcc8aaa8ca74346a4e1f6d5d62287a269d1.png",
                        height: 200,
                        width: 250,
                      ),
                    ),
                  ],
                ),
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

            Expanded(child: CustemCatogory()), 
            SizedBox(height: 20,) , 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendation" , style: TextStyle(
                  color: Colors.black , fontSize: 20 , 
                  fontWeight: FontWeight.bold , 
                ),) , 

                Text("see all" , style: TextStyle(
                  color: Colors.black , fontSize: 18 , 
                  fontWeight: FontWeight.w500 , 
                ),) , 
              ],
            ) ,
            SizedBox(height: 20),
            SizedBox(height: 350, child: ProductListScreenAllProdact()),
          ],
        ),
      ),
    );
  }
}
