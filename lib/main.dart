import 'package:flutter/material.dart';
import 'package:zestora/page_swip.dart';

void main() {
  runApp(const ZestoraApp());
}

class ZestoraApp extends StatelessWidget {
  const ZestoraApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white , 
      ),
      home: PageSwip() ,
    );
  }
}
