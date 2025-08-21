import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  
  @override
  Widget build(BuildContext context) {
      TextStyle textoEstilizado = TextStyle(
        color: Theme.of(context).colorScheme.tertiary,
      );
    return Center(
      child: SizedBox(      
        height: MediaQuery.sizeOf(context).height * 0.1,
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: textoEstilizado,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text(
              "Insira um número", 
              style: textoEstilizado,
              ),
            hintText: "EX:2",
            hintStyle: textoEstilizado,
            labelStyle: textoEstilizado,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),

          ),
        ),
      ),
    );
  }
}