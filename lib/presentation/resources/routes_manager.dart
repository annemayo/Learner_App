import 'package:flutter/material.dart';
import 'package:udemy_learning_app/presentation/forgot_password/forgot_password.dart';
import 'package:udemy_learning_app/presentation/login/login.dart';
import 'package:udemy_learning_app/presentation/main/main_view.dart';
import 'package:udemy_learning_app/presentation/onboarding/onboarding.dart';
import 'package:udemy_learning_app/presentation/register/register.dart';
import 'package:udemy_learning_app/presentation/resources/string_manager.dart';
import 'package:udemy_learning_app/presentation/splash/splash.dart';
import 'package:udemy_learning_app/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (context) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (context) => StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
