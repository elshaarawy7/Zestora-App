import 'package:flutter/material.dart';
import 'package:zestora/core/utils/color_app.dart';

class AuthTextButton extends StatelessWidget {
  const AuthTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {},
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
    );
  }
}
