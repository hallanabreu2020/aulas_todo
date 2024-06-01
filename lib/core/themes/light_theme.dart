
import 'package:flutter/material.dart';

class LightTheme {
  static final theme = ThemeData(
    focusColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
        maximumSize: WidgetStateProperty.all(const Size(double.infinity, 124)),
        backgroundColor: WidgetStateProperty.all(Colors.green),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontFamily: 'Urbanist',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        shadowColor: WidgetStateProperty.all(Colors.black), // Cor da sombra
        elevation: WidgetStateProperty.all(10), 
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
      displayMedium: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w800),
      displaySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      headlineLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, overflow: TextOverflow.ellipsis),
      titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: Colors.white,
      suffixIconColor: Colors.white,
      iconColor: Colors.red,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 0, 81, 3),
          width: 2,
        ),
      ),
    ),
  );
}


