import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/main_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
      );
  }
}
