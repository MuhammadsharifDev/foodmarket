import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/auth/login/bloc/login_bloc.dart';
import 'package:foodmarket_firebase/presintation/auth/login/login_page.dart';
import 'package:foodmarket_firebase/presintation/auth/signup/bloc/signup_bloc.dart';
import 'package:foodmarket_firebase/presintation/auth/signup/sigup_page.dart';
import 'package:foodmarket_firebase/presintation/main/home/home_page.dart';
import 'package:foodmarket_firebase/presintation/main/main_page.dart';
import 'package:foodmarket_firebase/presintation/routes/name_routes.dart';
import 'package:foodmarket_firebase/presintation/splash/splash_2_page.dart';
import 'package:foodmarket_firebase/presintation/splash/splash_page.dart';

sealed class AppRoutes {
  AppRoutes._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case Routes.splash_2:
        return MaterialPageRoute(
          builder: (context) => const SplashPage2(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginBloc(),
            child: LoginPage(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignupBloc(),
            child: SignupPage(),
          ),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

    }
    return null;
  }
}
