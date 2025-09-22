import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/core/utils/color_app.dart';
import 'package:zestora/futcher/ui/widgets/custem_batton.dart';
import 'package:zestora/futcher/ui/widgets/custem_driver.dart';
import 'package:zestora/futcher/ui/widgets/custem_item_scoil.dart';
import 'package:zestora/futcher/ui/widgets/custem_text_filed.dart';

class SingInPage extends StatelessWidget {
  SingInPage({super.key});

  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fromkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sing In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 10),
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

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 10),

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

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(
                      color: ColorApp.grean,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                CustomGreenButton(
                  text: "Sign in", 
                  onPressed: () {
                    if(fromkey.currentState!.validate()){
                      context.go(AppRouter.KHomePage) ;
                    }
                  }),

                SizedBox(height: 20),

                CustemDriver(),

                SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustemItemScoil(image: 'assets/scoil_imag/apple.png'),
                    SizedBox(width: 30),
                    CustemItemScoil(image: 'assets/scoil_imag/Facebook.png'),
                    SizedBox(width: 30),
                    CustemItemScoil(image: 'assets/scoil_imag/Google.png'),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Don’t Have an account ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        context.go(AppRouter.KSingUP);
                      },

                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: ColorApp.grean,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
