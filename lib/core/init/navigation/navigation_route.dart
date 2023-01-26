import 'package:coretemplate/core/constants/navigation/navigation_constants.dart';
import 'package:coretemplate/core/init/navigation/navigation_service.dart';
import 'package:coretemplate/main.dart';
import 'package:flutter/material.dart';

class NavigationRoute extends ChangeNotifier {
  NavigationRoute._init();
  static NavigationRoute? _instance;
  static NavigationRoute get instace {
    return _instance ??= NavigationRoute._init();
  }

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.Main_View:
        return MaterialPageRoute(builder: ((context) => const MyApp()));
      default:
        return MaterialPageRoute(builder: ((context) => const MyApp()));
    }
  }
}
