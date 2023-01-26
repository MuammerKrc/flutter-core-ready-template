import 'dart:js';

import 'package:coretemplate/core/init/navigation/navigation_service.dart';
import 'package:coretemplate/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

//todo: Burada baseview sayafalara dağıtılacak

class InitialProviders {
  static InitialProviders? _instance;
  static InitialProviders get instace => _instance ??= InitialProviders._init();
  InitialProviders._init();

  List<SingleChildWidget> get singleItems => [
        ChangeNotifierProvider(create: (create) => ThemeNotifier()),
        Provider.value(value: NavigationService.instance.navigatorKey),
      ];
  List<SingleChildWidget> get dependItems => [];
  List<SingleChildWidget> get uiChangesItems => [];
}
