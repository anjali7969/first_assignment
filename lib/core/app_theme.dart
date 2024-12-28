import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 3,
      shadowColor: Colors.black,
      titleTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        // fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat.Italic',
      ),
      toolbarHeight: 30, // Reduced app bar height
    ),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[200],
    fontFamily: 'Montserrat Bold',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 14,
          fontFamily: "Montserrat Bold",
        ),
        backgroundColor: Colors.blue, // Button background color
        foregroundColor: Colors.white, // Button text color
      ),
    ),
  );
}
