import 'package:femm/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFE),
        textTheme: const TextTheme().copyWith(
          titleLarge: const TextStyle(
            fontFamily: "montserrat",
            fontSize: 40,
            color: Colors.white,
          ),
          bodyLarge:  const TextStyle(
            fontFamily: "Public sans",
            fontSize: 40,
            color: Colors.white,
          ),
          bodyMedium:  const TextStyle(
            fontFamily: "Public sans",
            fontSize: 18,
            color: Colors.white,
          ),
          bodySmall: const TextStyle(
            fontFamily: "Public sans",
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      home: const Femm(),
    ),
  );
}