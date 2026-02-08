import 'package:flutter/material.dart';
import 'package:theme_learn/core/theme/app_theme.dart';

import 'app_theme_type.dart';

class AppThemeFactory {
  static ThemeData getTheme(AppThemeType type) {
    switch (type) {
      case AppThemeType.lightBlue:
        return AppTheme.lightTheme;

      case AppThemeType.darkBlue:
        return AppTheme.darkTheme;

      case AppThemeType.lightGreen:
        return AppTheme.lightTheme.copyWith(
          scaffoldBackgroundColor: const Color(0xFFF4F7F4),
        );

      case AppThemeType.darkGreen:
        return AppTheme.darkTheme.copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 1, 59, 20),
        );

      case AppThemeType.lightOrange:
        return AppTheme.lightTheme.copyWith(
          scaffoldBackgroundColor: const Color(0xFFFFF8F2),
        );

      case AppThemeType.darkOrange:
        return AppTheme.darkTheme.copyWith(
          scaffoldBackgroundColor: const Color(0xFF2A1A00),
        );
    }
  }
}

/* 

return MaterialApp(
      theme: AppThemeFactory.getTheme(AppThemeType.lightOrange),
      darkTheme: AppThemeFactory.getTheme(AppThemeType.darkOrange),
      themeMode: ThemeMode.light,
      home: HomePage(),
    );

 */
