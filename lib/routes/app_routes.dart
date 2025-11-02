import 'package:flutter/material.dart';


class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';
  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: (context) => spalsh(),
        loginScreen: (context) => LoginScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
        initialRoute: (context) => AppNavigationScreen()
      };
}
