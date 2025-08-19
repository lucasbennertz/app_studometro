import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Notificações restantes',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.07,
              ),
            ),
          ),
          Text(
            '5',
            style: TextStyle(
              color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.20,
            ),),
          // Add more notification items here
        ],
      ),
    );
  }
}