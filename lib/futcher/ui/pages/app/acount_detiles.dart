import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';

class AcountDetiles extends StatelessWidget {
  const AcountDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 12),
       child: Column(
        children: [
          SizedBox(height: 100,) , 
          CustomTextField(
            hintText: "Enter your name", 
            obscureText: false, 
            prefixIcon: Icons.person ,
          )  , 

          SizedBox(height: 20,) , 

          CustomTextField(
            hintText: "Enter your phone number", 
            obscureText: false, 
            prefixIcon: Icons.phone ,
          )  , 

          SizedBox(height: 20,) , 

          CustomTextField(
            hintText: "Enter your city", 
            obscureText: false, 
            prefixIcon: Icons.location_city ,
          )  , 

          SizedBox(height: 20,) , 

          CustomTextField(
            hintText: "Enter your streat", 
            obscureText: false, 
            prefixIcon: Icons.location_off ,
          )  ,  

         SizedBox(height: 100,) , 

          CustomGreenButton(
            text: "Contanou", 
            onPressed:(){

            })  , 

            SizedBox(height: 50,)



        ],
       ),
     ),
    );
  }
}