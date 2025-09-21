import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';

class SingInPage extends StatelessWidget {
   SingInPage({super.key});

  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sing In" , style: TextStyle(
                  color: Colors.black , 
                  fontSize: 35 , 
                  fontWeight: FontWeight.bold ,
                ),) , 
          
                SizedBox(height: 20,) ,  
          
                CustomTextField(
          hintText: "Enter Your Email",
          prefixIcon: Icons.email_outlined,
          obscureText: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Email can't be empty";
            }
            if (!value.contains("@")) {
              return "Enter a valid email";
            }
            return null;
          },
        ),
        
        const SizedBox(height: 20),
        
        CustomTextField(
          hintText: "Enter Your Password",
          prefixIcon: Icons.lock,
          obscureText: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Password can't be empty";
            }
            if (value.length < 6) {
              return "Password must be at least 6 characters";
            }
            return null;
          },
        ),   

        SizedBox(height: 20,) , 

        Align(
          alignment: Alignment.centerRight, 
          child: Text("Forget Password ?" , style: TextStyle(
            color: Colors.green , 
          ),),
        )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}