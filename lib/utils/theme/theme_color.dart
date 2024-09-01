import 'package:flutter/material.dart';

class ThemeColor {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
