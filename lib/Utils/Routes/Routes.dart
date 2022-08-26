import 'package:flutter/material.dart';
import 'package:flutter_interview/View/LoginScreen.dart';
import 'package:flutter_interview/View/MessageList.dart';
import 'package:flutter_interview/View/Registration.dart';
import 'package:flutter_interview/View/SplashScreen.dart';

import 'RoutesName.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MessageList());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Registration());
      default:
        return MaterialPageRoute(builder: (_) {
          return const SafeArea(
              child: Scaffold(
                body: Center(
                  child: Text("No routes found !"),
                ),
              ));
        });
    }
  }
}