import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/main_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1E1E1E),
          secondary: Color(0xFF555855),
          primary: Color(0xFF1E1E1E)
        ),
      ),
      home: MainScreen(),
      );
  }
}
