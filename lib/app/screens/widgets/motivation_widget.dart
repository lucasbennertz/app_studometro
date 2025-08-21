import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class MotivationWidget extends StatelessWidget {
  const MotivationWidget({super.key});

  Future<String> _lerFrase() async {
    try {
      // Lê o arquivo JSON da pasta assets
      final jsonString = await rootBundle.loadString('assets/motivacoes.json');
      final data = jsonDecode(jsonString);
      
      // Se o JSON for uma lista de frases, pega uma aleatória
      if (data is List && data.isNotEmpty) {
        data.shuffle();
        return data.first;
      }
      
      // Se for apenas uma string
      if (data is String) return data;

      return "Frase não encontrada";
    } catch (e) {
      return "Erro ao carregar motivação";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _lerFrase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return const Text("Erro ao carregar frase",
              style: TextStyle(color: Colors.red),);
        }

        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Motivação do dia:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    snapshot.data ?? '',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
