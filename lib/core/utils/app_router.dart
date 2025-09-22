import 'package:go_router/go_router.dart';
import 'package:zestora/futcher/ui/pages/splash_screans/splash_screan_1.dart';

class AppRouter {  

 final String kSplashScreen1 = '/splashScreen1';


  static final GoRouter router = GoRouter(
    
    routes: [ 

      GoRoute(
        path: '/'  ,
        builder: (context, state) => SplashScrean1(),
      )

    ]


    

  );
}