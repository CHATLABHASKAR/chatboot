import 'package:chat_bot/Screens/ChatScreens/chat_bot_screen.dart';
import 'package:chat_bot/Screens/LoginScreen/login_screen.dart';
import 'package:chat_bot/Screens/SignupScreen/signup_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const CHATBOT = '/chatbot';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.LOGIN, page: () => LoginView()),
    GetPage(name: AppRoutes.SIGNUP, page: () => SignupView()),
    GetPage(name: AppRoutes.CHATBOT, page: () => ChatbotView()),
  ];
}