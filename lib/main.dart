import 'package:calculator/calculator_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator',
        home: const CalculatorApp(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.grey[800],
          scaffoldBackgroundColor: Colors.grey[200],
          fontFamily: GoogleFonts.museoModerno().fontFamily,
        ));
  }
}
