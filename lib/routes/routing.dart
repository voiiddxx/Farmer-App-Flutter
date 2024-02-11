import 'package:farmer/routes/route_name.dart';
import 'package:farmer/view/start/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenreateSettings(RouteSettings settings) {
  switch (settings.name) {
    case RoutesNames.splashScreen:
      return MaterialPageRoute(builder: (context) {
        return const SplashScreen();
      });
    default:
      return MaterialPageRoute(builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text("No Screen Present"),
          ),
        );
      });
  }
}