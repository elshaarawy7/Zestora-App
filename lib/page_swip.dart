

import 'package:flutter/material.dart';
import 'package:zestora/futcher/ui/pages/auth/sing_in_page.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_1.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_2.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screans_3.dart';

class PageSwip extends StatefulWidget {
  const PageSwip({super.key});

  @override
  State<PageSwip> createState() => _PageSwipState();
}

class _PageSwipState extends State<PageSwip> {

  final PageController pageController = PageController(initialPage: 0) ; 

  @override 

  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController, 
      children: [
     
        SplashScrean1() , 
        SplashScrean2() , 
        SplashScreans3() ,
        SingInPage() ,
      ],
    );
  }
}

