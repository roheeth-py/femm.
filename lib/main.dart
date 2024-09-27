import 'package:femm/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color(0xFFFAFAFE),
        textTheme: const TextTheme().copyWith(
          bodyLarge: const TextStyle(
            fontFamily: "montserrat",
            fontSize: 40,
            color: Colors.white,
          ),
          bodyMedium:  const TextStyle(
            fontFamily: "Public-Sans",
            fontSize: 16,
            color: Color(0xFFF551A3),
          ),
          bodySmall: const TextStyle(
            fontFamily: "Public-Sans",
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