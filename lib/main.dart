import 'package:chat_bot/Routes/routes_pages.dart';
import 'package:chat_bot/Service/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isLoggedIn = await StorageService.getLoginState();

  runApp(MyApp(initialRoute: isLoggedIn ? AppRoutes.CHATBOT : AppRoutes.LOGIN));
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatbot',
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}