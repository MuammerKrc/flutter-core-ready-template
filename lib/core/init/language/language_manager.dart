import 'package:coretemplate/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class LanguageManager {
  LanguageManager._init();
  static LanguageManager? _instance;
  static LanguageManager get instance {
    return _instance ??= LanguageManager._init();
  }

  final enLocale = const Locale('en', "US");
  final trLocale = const Locale('tr', 'TR');

  List<Locale> get supportedLocales => [enLocale, trLocale];
}
