import 'package:flutter/material.dart';

//todo: navigator yapısı authorize ile birleştirilecek

class NavigationService {
  static NavigationService? _instance;
  static NavigationService get instance {
    return _instance ?? NavigationService._init();
  }

  NavigationService._init();
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey();

  final remevoAllOldRoutes = (Route<dynamic> route) => false;
  // Future<void> navigateToPage(String path, Object data) async {
  //   await Navigator.of(navigatorKey.currentContext!)
  //       .push(MaterialPageRoute(builder: builder));
  // }

  Future<void> navigateToReplacement(String path, Object data) async {
    await navigatorKey.currentState
        ?.pushReplacementNamed(path, arguments: data);
  }

  Future<void> navigateToPageClear(String path, Object data) async {
    await navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(path, remevoAllOldRoutes, arguments: data);
  }
}
