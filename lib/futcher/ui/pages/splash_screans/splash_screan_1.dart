import 'package:flutter/material.dart';

class SplashScrean1 extends StatelessWidget {
  const SplashScrean1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/Onboarding/eating vegan food-rafiki 1.png") , 
          SizedBox(height: 10,) , 

          Text("Choose Your Favorite Meal" , style: TextStyle(
            color: Colors.black , 
            fontSize: 25 , 
            fontWeight: FontWeight.bold 
          ),) , 

          SizedBox(height: 20,) , 

          Text("Browse a wide variety of restaurants and discover delicious dishes" , style: TextStyle(
            color: Colors.grey , 
            fontSize: 16 , 
            fontWeight: FontWeight.w500 , 
          ) , 
          maxLines: 2, 
          overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}