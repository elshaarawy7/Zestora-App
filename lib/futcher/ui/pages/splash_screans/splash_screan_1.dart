import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';

class SplashScrean1 extends StatelessWidget {
  const SplashScrean1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
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
            textAlign: TextAlign.center,
            ) ,  

            SizedBox(height: 20,) , 
        
            CustomGreenButton(
              text: "Next", 
              onPressed: () {
                context.go(AppRouter.kSplashScreen2);
              },
            ) , 
          ],
        ),
      ),
    );
  }
}