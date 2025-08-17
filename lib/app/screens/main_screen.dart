import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/widgets/motivation_widget.dart';
import 'package:vao_estudar/app/screens/widgets/my_app_bar.dart';
import 'package:vao_estudar/app/screens/widgets/notification_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: MyAppBar(),
      body: Column(
        children: [
          NotificationWidget(),
          SizedBox(height: 100),
          Container(
            color: Theme.of(context).colorScheme.secondary,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          MotivationWidget()
        ],
      )
      );
  }
}
