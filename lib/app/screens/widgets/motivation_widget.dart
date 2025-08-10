import 'dart:convert';
import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';

class MotivationWidget extends StatelessWidget {
  const MotivationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Motivação do dia:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Acredite em você mesmo e todo o resto virá naturalmente.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String> _loadJsonFromFile() async{
    String path = ".../utils/motivacoes.json";
    try {
       final file = File(path);
       if (await file.exists()) {
         return await file.readAsString();
       } else {
         print('Arquivo não encontrado: $path');
         return ''; // Ou lance uma exceção
       }
     } catch (e) {
       print('Erro ao ler o arquivo: $e');
       return ''; // Ou lance uma exceção
     }
  }

  Future<Map<String, dynamic>> readJson() async {
     final jsonString = await _loadJsonFromFile();
     if (jsonString.isNotEmpty) {
       try {
         return jsonDecode(jsonString) as Map<String, dynamic>;
       } catch (e) {
         print('Erro ao decodificar JSON: $e');
         return {}; // Ou lance uma exceção
       }
     } else {
       return {}; // Ou lance uma exceção
     }
   }
}