import 'package:flutter/material.dart';

class SplashScreans3 extends StatelessWidget {
  const SplashScreans3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/Onboarding/Delivery address-pana 1.png") , 
          SizedBox(height: 10,) , 

          Text(" Delivered to Your Door" , style: TextStyle(
            color: Colors.black , 
            fontSize: 25 , 
            fontWeight: FontWeight.bold 
          ),) , 

          SizedBox(height: 20,) , 

          Text("Enjoy fast and reliable delivery with real-time order tracking" , style: TextStyle(
            color: Colors.grey , 
            fontSize: 16 , 
            fontWeight: FontWeight.w500 , 
          ) , 
          maxLines: 2, 
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          ) , 
        ],
      ),
    );
  }
}