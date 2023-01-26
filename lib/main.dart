import 'package:coretemplate/core/base/state/base_state.dart';
import 'package:coretemplate/core/constants/app/app_constants.dart';
import 'package:coretemplate/core/init/language/language_manager.dart';
import 'package:coretemplate/core/init/language/locale_keys.g.dart';
import 'package:coretemplate/core/init/notifier/initial_providers.dart';
import 'package:coretemplate/core/init/notifier/theme_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [...InitialProviders.instace.providers],
    child: EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH,
      startLocale: LanguageManager.instance.trLocale,
      fallbackLocale: LanguageManager.instance.trLocale,
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: LocaleKeys.welcome.tr(),
        theme: context.read<ThemeNotifier>().themeData,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    print("object");
                  },
                  icon: const Icon(Icons.change_history))
            ],
            title: Text('Material App Bar'),
          ),
        ));
  }
}
