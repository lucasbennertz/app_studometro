import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsViewmodel extends ChangeNotifier{

  final int numeroDeNotificacoes = 0;
  late SharedPreferences preferences;

  NotificationsViewmodel() {
    SharedPreferences preferences = _carregarSharedPreferences();
  }

  definirNumero(int numeroNotificacoes){
    preferences.setInt("NumeroNotificacoes", numeroNotificacoes);
  }

  pegarNumero(){
    return preferences.getInt("NumeroNotificacoes");
  }
  _carregarSharedPreferences() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  
}