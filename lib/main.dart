import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userprofile/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(color: Colors.black),
            scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
            textTheme: GoogleFonts.latoTextTheme(
                const TextTheme(bodyMedium: TextStyle(color: Colors.white)))),
        debugShowCheckedModeBanner: false,
        home: const MainScreen());
  }
}
