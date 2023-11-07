import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userprofile/main_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('fa'),
        ],
        locale: _locale,
        theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
          textTheme: AppTextTheme._().faTextTheme,
        ),
        debugShowCheckedModeBanner: false,
        home: MainScreen(
          selectedLanguageChange: (language) {
            setState(() {
              _locale = language == Language.en
                  ? const Locale('en')
                  : const Locale('fa');
            });
          },
        ));
  }
}

class AppTextTheme {
  AppTextTheme._();
  final TextTheme enTextTheme = GoogleFonts.latoTextTheme(
      const TextTheme(bodyMedium: TextStyle(color: Colors.white)));
  final TextTheme faTextTheme = const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontFamily: 'reg'),
    bodyLarge: TextStyle(color: Colors.white, fontFamily: 'med'),
  );
}
