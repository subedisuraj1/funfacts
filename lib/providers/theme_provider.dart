import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkModeChecked = false;

  void updateMode({required bool darkmode}) async {
    isDarkModeChecked = darkmode;
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDarkModeChecked", darkmode);
    notifyListeners();
  }

  void loadMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkModeChecked = prefs.getBool("isDarkModeChecked") ?? true;
    notifyListeners();
  }
}
