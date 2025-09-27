import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';

class AcountDetiles extends StatelessWidget {
   AcountDetiles({super.key}); 

  final formkey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Form(
        key: formkey,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 12),
           child: Column(
            children: [
              SizedBox(height: 100,) , 
              CustomTextField(
                hintText: "Enter your name", 
                obscureText: false, 
                prefixIcon: Icons.person ,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "pleaes Enter your name " ;
                  }
                },
              )  , 
         
              SizedBox(height: 20,) , 
         
              CustomTextField(
                hintText: "Enter your phone number", 
                obscureText: false, 
                prefixIcon: Icons.phone ,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "pleaes Enter your phone " ;
                  }
                },
              )  , 
         
              SizedBox(height: 20,) , 
         
              CustomTextField(
                hintText: "Enter your city", 
                obscureText: false, 
                prefixIcon: Icons.location_city ,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "pleaes Enter your city " ;
                  }
                },
              )  , 
         
              SizedBox(height: 20,) , 
         
              CustomTextField(
                hintText: "Enter your streat", 
                obscureText: false, 
                prefixIcon: Icons.location_off ,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "pleaes Enter your streat " ;
                  }
                },
              )  ,  
         
             SizedBox(height: 100,) , 
         
              CustomGreenButton(
                text: "Contanou", 
                onPressed:(){
                  if(formkey.currentState!.validate()){
                    context.go(AppRouter.KpaymentPage) ;
                  }
                })  , 
         
                SizedBox(height: 50,)
         
         
         
            ],
           ),
         ),
       ),
     ),
    );
  }
}