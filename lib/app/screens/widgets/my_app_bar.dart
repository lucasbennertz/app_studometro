import 'package:flutter/material.dart';
import 'package:vao_estudar/app/utils/routes_class.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    podeVoltar(){
      return Navigator.canPop(context);
    }
    return AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          'Vão Estudar!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: !podeVoltar() ? Icon(Icons.settings) : Icon(Icons.arrow_back),
          onPressed: () => {
            podeVoltar() ?
            Navigator.pop(context) : 
            Navigator.pushNamed(context, RoutesClass.telaConfiguracoes),
            
          },
        ),

      );
  }
}