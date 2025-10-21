import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:zestora/core/utils/api_keys.dart';
import 'package:zestora/core/utils/app_router.dart';
import 'package:zestora/page_swip.dart';

void main() {
  Stripe.publishableKey = ApiKeys.Publishable_key;
  runApp(const ZestoraApp());
}

class ZestoraApp extends StatelessWidget {
  const ZestoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
