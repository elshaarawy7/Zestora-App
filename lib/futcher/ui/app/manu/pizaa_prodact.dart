import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/core/utils/app_router.dart';

class PizaaProdact extends StatelessWidget {
  const PizaaProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:  AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.go(AppRouter.KHomePage);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
    );
  }
}