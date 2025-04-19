import 'package:chat_bot/Controller/chat_bot_controller.dart';
import 'package:chat_bot/Routes/routes_pages.dart';
import 'package:chat_bot/Service/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotView extends StatelessWidget {
  final controller = Get.put(ChatbotController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Chatbot',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            iconSize: 16,
            color: Colors.black54,
            icon: Icon(Icons.logout),
            onPressed: () async {
              await StorageService.clearLoginState();
              Get.offAllNamed(AppRoutes.LOGIN);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.messages.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(controller.messages[index]));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      controller: controller.messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: controller.sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
