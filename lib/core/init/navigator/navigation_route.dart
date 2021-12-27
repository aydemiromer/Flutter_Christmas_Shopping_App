import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../view/basket/basket_home.dart';
import '../../../view/basket/basket_products.dart';
import '../../../view/onboard/onboard_page.dart';
import '../../constants/navigator/routes.dart';
import 'transitions/rotation.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();
  Route<dynamic> generateRoute(args) {
    switch (args.name) {
      case RouteConstants.onboard:
        return _navigateToDefault(const OnBoard());
      case RouteConstants.baskethome:
        return _navigateToDefault(const BasketHome());
      case RouteConstants.shoppingcard:
        return _navigateToDefault(const BasketProducts());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                body: Center(child: Text("Opppsss.. Not found any page."))));
    }
  }

  static MaterialPageRoute _navigateToDefault(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }

  // ignore: unused_element
  static PageRoute _navigateToRotation(Widget page) {
    return Rotation(page: page, lotie: Lottie.asset("assets/noel_dad.json"));
  }
}
