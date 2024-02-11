import 'package:farmer/routes/route_name.dart';
import 'package:farmer/view/home/home_screen.dart';
import 'package:farmer/view/images/upload_image.dart';
import 'package:farmer/view/res/result_screen.dart';
import 'package:farmer/view/start/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenreateSettings(RouteSettings settings) {
  switch (settings.name) {
    case RoutesNames.splashScreen:
      return MaterialPageRoute(builder: (context) {
        return const SplashScreen();
      });
    case RoutesNames.homeScreen:
      return MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      });
    case RoutesNames.imageUploadScreen:
      return MaterialPageRoute(builder: (context) {
        dynamic data = settings.arguments as dynamic;
        return ClickCamera(cropType: data);
      });
    case RoutesNames.resultScreen:
      return MaterialPageRoute(builder: (context) {
        dynamic resData = settings.arguments as dynamic;
        return ResultScreen(
          resData: resData,
        );
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
