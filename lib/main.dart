import 'package:flutter/material.dart';
import 'package:vao_estudar/app/utils/notification_service.dart';
import 'app/main_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
  await NotificationService.init();
}
