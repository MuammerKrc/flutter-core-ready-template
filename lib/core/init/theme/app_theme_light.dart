import 'package:coretemplate/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeLight extends BaseAppTheme {
  AppThemeLight._init();
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  ThemeData get theme => ThemeData.light();
}
