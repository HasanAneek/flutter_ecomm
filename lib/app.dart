import 'package:bmi/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TBMITheme.lightTheme,
      darkTheme: TBMITheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: const OnboardingScreen(),
      home: const Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
