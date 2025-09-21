

import 'package:flutter/material.dart';

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
     
        
      ],
    );
  }
}

