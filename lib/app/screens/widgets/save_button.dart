import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.funcao});

  final VoidCallback funcao;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcao,
      child: Text(
        "Salvar",
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).width * 0.04,
        ),
        ),
      );
  }
}