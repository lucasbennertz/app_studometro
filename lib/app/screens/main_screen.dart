import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/widgets/my_app_bar.dart';
import 'package:vao_estudar/app/screens/widgets/notification_widget.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: MyAppBar(),
      body: Column(
        children: [
          NotificationWidget()
        ],
      )
      );
  }
}
