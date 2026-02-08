import 'package:flutter/material.dart';
import 'package:theme_learn/core/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تطبيق تجريبي UI"),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // نص
            const Text(
              "مرحباً بك 👋",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            const Text(
              "ده تطبيق UI فقط علشان تتعلم Flutter",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // كارد
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: Column(
                children: const [
                  Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    "Flutter UI",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text("تعلم الواجهات بسهولة"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // أزرار
            ElevatedButton(onPressed: () {}, child: const Text("زر أساسي")),

            const SizedBox(height: 10),

            OutlinedButton(onPressed: () {}, child: const Text("زر بإطار")),

            const SizedBox(height: 10),

            TextButton(onPressed: () {}, child: const Text("زر نصي")),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
