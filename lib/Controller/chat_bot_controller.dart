import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotController extends GetxController {
  final messageController = TextEditingController();
  final messages = <String>[].obs;

  void sendMessage() {
    final userMessage = messageController.text.trim();
    if (userMessage.isEmpty) return;

    messages.add('You: $userMessage',);
    messageController.clear();

    Future.delayed(Duration(milliseconds: 500), () {
      messages.add('Bot: This is a dummy response to "$userMessage"');
    });
  }
}