import 'package:flutter/material.dart';
import 'package:quiz/homepage.dart';

void main() => runApp(quiz());
 
 class quiz extends StatelessWidget {
  const quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)
        ),

      ),
    );
  }
}