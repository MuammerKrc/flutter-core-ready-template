import 'package:coretemplate/core/init/theme/app_theme.dart';
import 'package:coretemplate/core/init/theme/app_theme_dark.dart';
import 'package:coretemplate/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData themeData = AppThemeLight.instance.theme;
  changeTheme(BaseAppTheme baseAppTheme) {
    if (baseAppTheme is AppThemeLight && !(themeData is AppThemeLight)) {
      themeData = AppThemeLight.instance.theme;
      notifyListeners();
    } else if (baseAppTheme is AppThemeDark && !(themeData is AppThemeLight)) {
      themeData = AppThemeDark.instance.theme;
      notifyListeners();
    }
  }
}
