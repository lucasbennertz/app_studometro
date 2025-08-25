import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static Future<void> init() async{
    const AndroidInitializationSettings androidInit = AndroidInitializationSettings('@drawable/splash');
    const InitializationSettings settings = InitializationSettings(android: androidInit);

    await _notificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (NotificationResponse resp) {
        print("Clicou na notificação ${resp.payload}");
      },
    );
  }
}
