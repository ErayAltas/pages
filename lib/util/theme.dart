import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.grey.shade200,
    appBarTheme: const AppBarTheme(
        color: Colors.blueAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 22)),
    // textTheme: const TextTheme(
    //   titleLarge: TextStyle(color: Colors.black, fontSize: 24),
    //   titleMedium: TextStyle(color: Colors.black, fontSize: 18),
    //   labelMedium: TextStyle(color: Colors.grey, fontSize: 16),
    //   displayMedium: TextStyle(color: Colors.black, fontSize: 14),
    // ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blueAccent,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.black),
  );
  static final dark = ThemeData.dark()
      .copyWith(backgroundColor: Colors.black, primaryColor: Colors.black45);
}
