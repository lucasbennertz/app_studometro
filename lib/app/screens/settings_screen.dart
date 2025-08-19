import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/widgets/input_text.dart';
import 'package:vao_estudar/app/screens/widgets/my_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputText(),
          ],
        ),
      ),
    );
  }
}