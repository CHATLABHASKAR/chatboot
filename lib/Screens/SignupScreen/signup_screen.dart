import 'package:chat_bot/Controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),
      )),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            color: Colors.white,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Form(
                    key: controller.formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.nameController,
                            decoration: InputDecoration(labelText: 'Name'),
                            validator:
                                (value) => value!.isEmpty ? 'Enter name' : null,
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: controller.emailController,
                            decoration: InputDecoration(labelText: 'Email'),
                            validator:
                                (value) =>
                                    value!.isEmpty ? 'Enter email' : null,
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: controller.passwordController,
                            decoration: InputDecoration(labelText: 'Password'),
                            obscureText: true,
                            validator:
                                (value) =>
                                    value!.isEmpty ? 'Enter password' : null,
                          ),
                          SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: controller.signup,
                              child: Text('Signup',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: controller.goToLogin,
                            child: Text('Already have an account? Login'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
