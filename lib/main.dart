import 'package:femm/screens/authentication/splash_screen.dart';
import 'package:femm/screens/main/track.dart';
import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFAFAFE),
  primaryTextTheme: const TextTheme().copyWith(
      bodyLarge:  const TextStyle(
        fontFamily: "Public sans",
        fontSize: 20,
        color: Colors.white,
      ),
      bodyMedium:  const TextStyle(
        fontFamily: "Public sans",
        fontSize: 18,
        color: Colors.black,
      ),
      bodySmall: const TextStyle(
        fontFamily: "Public sans",
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: Colors.white,
      ),
  ),
  textTheme: const TextTheme().copyWith(
    displayLarge: const TextStyle(
      fontFamily: "montserrat",
      fontSize: 40,
      color: Colors.white,
    ),
    bodyLarge:  const TextStyle(
      fontFamily: "Public sans",
      fontSize: 18,
      color: Colors.black,
    ),
    bodyMedium:  const TextStyle(
      fontFamily: "Public sans",
      fontSize: 16,
      color: Colors.black,
    ),
    bodySmall: const TextStyle(
      fontFamily: "Public sans",
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.black,
    ),

  ),
);

void main() {
  runApp(
    MaterialApp(
      theme: theme,
      home: const Track(),
    ),
  );
}
