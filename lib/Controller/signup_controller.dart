import 'package:chat_bot/Routes/routes_pages.dart';
import 'package:chat_bot/Service/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void signup() {
    if (formKey.currentState!.validate()) {
      StorageService.saveLoginState(true);
      Get.offAllNamed(AppRoutes.CHATBOT);
    }
  }

  void goToLogin() {
    Get.offNamed(AppRoutes.LOGIN);
  }
}