import 'package:flutter/material.dart';
import 'package:ghost_scan/presentation/home_screen/home_screen.dart';
import 'package:ghost_scan/presentation/insert_screen/insert_screen.dart';
import 'package:ghost_scan/presentation/show_data_screen/show_data_screen.dart';
import 'package:ghost_scan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String insertScreen = '/insert_screen';

  static const String showDataScreen = '/show_data_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    insertScreen: (context) => InsertScreen(),
    showDataScreen: (context) => ShowDataScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
