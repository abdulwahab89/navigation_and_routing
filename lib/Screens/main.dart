import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Screens/utilis/routes_name.dart';
import 'utilis/Routes.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteNames.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
