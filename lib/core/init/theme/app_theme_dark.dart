import 'package:coretemplate/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeDark extends BaseAppTheme {
  AppThemeDark._init();
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    return _instance ??= AppThemeDark._init();
  }

  ThemeData get theme => ThemeData.dark();
}
