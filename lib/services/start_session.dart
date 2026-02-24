import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remindme/services/appwrite_client.dart';

Future<void> startSession(TextEditingController emailController, TextEditingController passwordController) async {
  try {
    await AppwriteClient.account.createEmailPasswordSession(
      email: emailController.text,
      password: passwordController.text,
    );

    
  } catch (e) {
    if (kDebugMode) {
      print('Error starting session: $e');
    }
  }
}
