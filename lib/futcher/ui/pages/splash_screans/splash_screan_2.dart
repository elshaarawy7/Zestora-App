import 'package:flutter/material.dart';

class SplashScrean2 extends StatelessWidget {
  const SplashScrean2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/Onboarding/Order food-pana 1.png") , 
          SizedBox(height: 10,) , 

          Text("Order Fast & Easy" , style: TextStyle(
            color: Colors.black , 
            fontSize: 25 , 
            fontWeight: FontWeight.bold 
          ),) , 

          SizedBox(height: 20,) , 

          Text("Place your order in just a few simple steps — quick, simple, hassle-free" , style: TextStyle(
            color: Colors.grey , 
            fontSize: 16 , 
            fontWeight: FontWeight.w500 , 
          ) , 
          maxLines: 2, 
          overflow: TextOverflow.ellipsis,
          ) , 
          
        ],
      ),
    );
  }
}