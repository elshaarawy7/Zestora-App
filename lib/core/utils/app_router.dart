import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:zestora/futcher/ui/model/card_item.dart';
import 'package:zestora/futcher/ui/model/prodact_model.dart';
import 'package:zestora/futcher/ui/pages/app/acount_detiles.dart';
import 'package:zestora/futcher/ui/pages/app/card_page.dart';
import 'package:zestora/futcher/ui/pages/app/home_page.dart';
import 'package:zestora/futcher/ui/pages/app/manu/all_prodact.dart';
import 'package:zestora/futcher/ui/pages/app/manu/burger_prodact.dart';
import 'package:zestora/futcher/ui/pages/app/manu/fired_chaked_prodact.dart';
import 'package:zestora/futcher/ui/pages/app/manu/pasta_prodact.dart';
import 'package:zestora/futcher/ui/pages/app/manu/pizaa_prodact.dart';
import 'package:zestora/futcher/ui/pages/app/payment_page.dart';
import 'package:zestora/futcher/ui/pages/app/prodatct_detiles.dart';
import 'package:zestora/futcher/ui/pages/auth/sing_in_page.dart';
import 'package:zestora/futcher/ui/pages/auth/sing_up.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_1.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_2.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screans_3.dart';

class AppRouter {
  static final String kSplashScreen1 = '/splashScreen1';
  static final String kSplashScreen2 = '/splashScreen2';
  static final String kSplashScreen3 = '/splashScreen3';
  static final String KSingIN = '/sing_in';
  static final String KSingUP = '/sing_up';
  static final String KHomePage = '/homePage';
  static final String KAllProdact = '/all_prodact';
  static final String KPizaaProdact = '/pizaa_prodact';
  static final String KPataProdact = '/pasta_prodact';
  static final String KbuirgerProdact = '/buirger_prodact';
  static final String KFridChakedProdact = '/fried_chaken_prodact';
  static final String KProductDetailsScreen = '/prodact_details_screen';
  static final String KCardPage = '/card_page';
  static final String KAcountDetales = '/acount_detiles';
  static final String KpaymentPage = '/payment_page';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScrean1()),

      GoRoute(
        path: kSplashScreen2,
        builder: (context, state) => SplashScrean2(),
      ),

      GoRoute(
        path: kSplashScreen3,
        builder: (context, state) => SplashScreans3(),
      ),

      GoRoute(path: KSingIN, builder: (context, state) => SingInPage()),

      GoRoute(path: KSingUP, builder: (context, state) => SingUpPage()),

      GoRoute(path: KHomePage, builder: (context, state) => HomePage()),

      GoRoute(path: KAllProdact, builder: (context, state) => AllProdact()),

      GoRoute(path: KPizaaProdact, builder: (context, state) => PizaaProdact()),

      GoRoute(path: KPataProdact, builder: (context, state) => PastaProdact()),

      GoRoute(
        path: KbuirgerProdact,
        builder: (context, state) => BurgerProdact(),
      ),

      GoRoute(
        path: KFridChakedProdact,
        builder: (context, state) => FiredChakedProdact(),
      ),

      GoRoute(
        path: KProductDetailsScreen,
        builder: (context, state) {
          final product = state.extra as ProdactModel; // استقبل الـ extra
          return ProductDetailsScreen(product: product);
        },
      ),

      GoRoute(
        path: KCardPage,
        name: AppRouter.KCardPage,
        builder: (context, state) {
          final cartItems = state.extra as List<CartItem>;
          return CardPage();
        },
      ),

      GoRoute(
        path: KAcountDetales,
        builder: (context, state) => AcountDetiles(),
      ),

      GoRoute(path: KpaymentPage, builder: (context, state) => PaymentPage()),
    ],
  );
}
