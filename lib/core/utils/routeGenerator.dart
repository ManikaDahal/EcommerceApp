import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/routeConst.dart';
import 'package:shopping_app/onboardingPage.dart';
import 'package:shopping_app/signup.dart';
import 'package:shopping_app/widgets/loginPage.dart';

class RouteGenerator {
  static navigateToPage(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.push(context,
        generateRoute(RouteSettings(name: route, arguments: arguments)));
  }

  static navigateToPageWithoutStack(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.pushAndRemoveUntil(
        context,
        generateRoute(RouteSettings(name: route, arguments: arguments)),
        (route) => false);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingPageRoute:
        return MaterialPageRoute(builder: (_) => const Onboardingpage ());
        case Routes.signupPageRoute:
        return MaterialPageRoute(builder: (_) => const SignupPage ());
         case Routes.loginPageRoute:
        return MaterialPageRoute(builder: (_) => const Loginpage ());
     
          
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}