import 'package:femm/screens/authentication/login_screen.dart';
import 'package:femm/screens/authentication/splash_screen.dart';
import 'package:femm/screens/main/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: theme,
        home:  StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return MainScreen();
            }
            return LoginScreen();
          }
        ),
      ),
    ),
  );
}
