import 'package:go_router/go_router.dart';
import 'package:zestora/futcher/ui/app/home_page.dart';
import 'package:zestora/futcher/ui/app/manu/all_prodact.dart';
import 'package:zestora/futcher/ui/pages/auth/sing_in_page.dart';
import 'package:zestora/futcher/ui/pages/auth/sing_up.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_1.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_2.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screans_3.dart';

class AppRouter {  

 static final String kSplashScreen1 = '/splashScreen1';
 static final String kSplashScreen2 = '/splashScreen2';
  static final String kSplashScreen3 = '/splashScreen3';
  static final String KSingIN = '/sing_in' ;
  static final String KSingUP = '/sing_up' ;
  static final String KHomePage = '/homePage' ;
  static final String KAllProdact = '/all_prodact' ;


  static final GoRouter router = GoRouter(
    
    routes: [ 

      GoRoute(
        path: '/'  ,
        builder: (context, state) => SplashScrean1(),
      ) , 

      GoRoute(
        path: kSplashScreen2 , 
        builder:(context, state) => SplashScrean2(),
      ) , 

        GoRoute(
        path: kSplashScreen3 , 
        builder:(context, state) => SplashScreans3(),
      ) , 

      GoRoute(
        path: KSingIN , 
        builder: (context, state) => SingInPage(),
      ) , 

       GoRoute(
        path: KSingUP , 
        builder: (context, state) => SingUpPage(),
      ) , 

      GoRoute(
        path: KHomePage , 
        builder: (context, state) => HomePage(),
      ) , 

      GoRoute(
        path: KAllProdact , 
        builder: (context, state) => AllProdact(),
      )

    ]


    

  );
}