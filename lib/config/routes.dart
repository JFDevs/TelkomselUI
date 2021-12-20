import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String authentication = "/authentication";
  static const String register = "/register";
  static const String verificationCode = "/verificationCode";
  static const String personalInformation = "/personalInformation";
  static const String home = "/home";
  static const String cardCenter = "/cardCenter";
  static const String inAndOut = "/inAndOut";
  static const String profile = "/profile";
  static const String send = "/send";

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authentication:
        return CustomRoutes(page: null);

      default:
        return CustomRoutes(
          page: Scaffold(
            appBar: AppBar(
              title: Text("Not Found"),
            ),
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }

  ///Singleton factory
  static final Routes _instance = Routes._internal();

  factory Routes() {
    return _instance;
  }

  Routes._internal();
}

class CustomRoutes extends PageRouteBuilder {
  final Widget page;
  final bool fullscreenDialog;
  CustomRoutes({this.page, this.fullscreenDialog = false})
      : super(
          fullscreenDialog: fullscreenDialog,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
