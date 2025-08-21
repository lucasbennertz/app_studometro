import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text(
        "Salvar",
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).width * 0.04
        ),
        ),
      );
  }
}