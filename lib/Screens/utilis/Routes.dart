import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Screens/home_screen.dart';
import 'package:navigation_and_routing/Screens/screen_one.dart';
import 'package:navigation_and_routing/Screens/screen_two.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteNames.screenOne:
        return MaterialPageRoute(builder: (context) => const ScreenOne());
      case RouteNames.screenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Text('Invalid'),
          );
        });
    }
  }
}
