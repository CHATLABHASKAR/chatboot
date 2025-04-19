import 'package:chat_bot/Routes/routes_pages.dart';
import 'package:chat_bot/Service/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() {
    if (formKey.currentState!.validate()) {
      if (emailController.text == 'test@test.com' && passwordController.text == '123456') {
        StorageService.saveLoginState(true);
        Get.offAllNamed(AppRoutes.CHATBOT);
      } else {
        Get.snackbar('Login Failed', 'Invalid email or password');
      }
    }
  }

  void goToSignup() {
    Get.toNamed(AppRoutes.SIGNUP);
  }
}