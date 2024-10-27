import 'package:flutter/material.dart';

import 'package:flutter_app_rutas/screens/screens.dart';

class AppRoute {
  static const initialRoute = 'onBoardingScreen';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({'homeScreen': (BuildContext context) => const HomeScreen()});
    appRoutes.addAll({
      'onBoardingScreen': (BuildContext context) => const OnBoardingScreen()
    });

    return appRoutes;
  }
}
