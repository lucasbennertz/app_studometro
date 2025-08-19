import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Theme.of(context).colorScheme.secondary,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.001,
          );
  }
}