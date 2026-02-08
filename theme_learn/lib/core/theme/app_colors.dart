import 'package:flutter/material.dart';

class AppColors {
  // ===============================
  // 🌞 LIGHT
  // ===============================
  // اللون الأساسي للتطبيق (AppBar – أزرار – FAB)
  static const Color lightPrimary = Colors.blue;
  // درجة أفتح من اللون الأساسي (Hover / Highlight / Variants)
  static const Color lightPrimaryLight = Color(0xFF90CAF9);
  // درجة أغمق من اللون الأساسي (Pressed / Emphasis)
  static const Color lightPrimaryDark = Color(0xFF1565C0);
  // لون ثانوي للتأكيد أو العناصر الثانوية
  static const Color lightSecondary = Colors.orange;
  // خلفية الصفحات (Scaffold)
  static const Color lightBackground = Color(0xFFF5F5F5);
  // خلفية الكروت – الشيتات – Dialogs
  static const Color lightSurface = Colors.white;
  // لون الأخطاء (Validation – SnackBar Error)
  static const Color lightError = Colors.red;
  // لون النص/الأيقونات فوق اللون الأساسي
  static const Color lightOnPrimary = Colors.white;
  // لون النص/الأيقونات فوق اللون الثانوي
  static const Color lightOnSecondary = Colors.white;
  // لون النص الأساسي فوق الخلفية
  static const Color lightOnBackground = Colors.black;
  // لون النص فوق الكروت والعناصر السطحية
  static const Color lightOnSurface = Colors.black;
  // لون النص فوق لون الخطأ
  static const Color lightOnError = Colors.white;

  // ===============================
  // 🌙 DARK
  // ===============================
  static const Color darkPrimary = Colors.tealAccent;
  static const Color darkPrimaryLight = Color(0xFF64FFDA);
  static const Color darkPrimaryDark = Color(0xFF00796B);
  static const Color darkSecondary = Colors.orangeAccent;
  static const Color darkBackground = Color.fromARGB(242, 0, 5, 17);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkError = Colors.redAccent;

  static const Color darkOnPrimary = Colors.black;
  static const Color darkOnSecondary = Colors.black;
  static const Color darkOnBackground = Colors.white;
  static const Color darkOnSurface = Colors.white;
  static const Color darkOnError = Colors.black;
}
