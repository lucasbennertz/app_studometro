import 'package:flutter/material.dart';
import 'package:vao_estudar/app/screens/widgets/input_text.dart';
import 'package:vao_estudar/app/screens/widgets/my_app_bar.dart';
import 'package:vao_estudar/app/screens/widgets/save_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    void validar(){
      if(formKey.currentState!.validate()){
        formKey.currentState!.save();
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Insira o número desejado de notificações:",
               style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: MediaQuery.sizeOf(context).width * 0.04,
               ),
               ),
               SizedBox(height: 16,),
              InputText(),
              SaveButton(funcao: validar),
            ],
          ),
        ),
      ),
    );
  }
}