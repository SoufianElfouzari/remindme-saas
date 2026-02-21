import 'package:flutter/material.dart';
import 'package:remindme/constants/colors.dart';
import 'package:remindme/constants/text_styles.dart';
import 'package:remindme/widgets/common/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          // TODO Left Side: Login Form (Email, Password, Login Button etc.)
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: AppTextStyles.h1,),
                SizedBox(height: 20),
                // TODO Email TextField
                // TODO Password TextField
                // TODO Login Button

              ],
            ),
          ),
          // TODO Right Side: Image.
          Expanded(
            child: Placeholder(),
          ),
        ],
      )
    );
  }
}