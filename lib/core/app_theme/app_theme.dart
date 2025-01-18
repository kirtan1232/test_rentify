import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.grey[200],
      fontFamily: 'Montserrat Regular',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat Bold'),
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.green,
          elevation: 4,
          titleTextStyle: TextStyle(
            fontSize: 16,
            color: Color(0xff00FF00),
            fontWeight: FontWeight.bold,
          )));
}
