import 'package:coretemplate/core/constants/enums/cache_enum_types.dart';
import 'package:coretemplate/core/init/language/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  CacheService._init() {
    SharedPreferences.getInstance().then((value) => _preferences = value);
  }
  static SharedPreferences? _preferences;
  static CacheService? _instance;
  static CacheService get instance => _instance ??= CacheService._init();

  Future<void> setStringValue(CacheEnumTypes types, String value) async {
    await _preferences!.setString(types.name, value);
  }

  Future<void> getStringValue(CacheEnumTypes keys) async =>
      await _preferences!.getString(keys.name);
}
