import 'package:flutter/material.dart';
import 'package:remindme/constants/colors.dart';
import 'package:remindme/constants/text_styles.dart';
import 'package:remindme/widgets/common/button.dart';
import 'package:remindme/widgets/common/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          // TODO Left Side: Login Form (Email, Password, Login Button etc.)
          SizedBox(
            width: screenWidth * 0.4, // 40% vom Screen,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login', style: AppTextStyles.h1),
                  SizedBox(height: 20),
                  AppTextField(
                    label: 'Email eingeben',
                    controller:
                        TextEditingController(), //Todo: Placeholder Controller ersetzen
                  ),

                  const SizedBox(height: 22),

                  AppTextField(
                    label: 'Passwort eingeben',
                    controller:
                        TextEditingController(), //Todo: Placeholder Controller ersetzen
                  ),
                  // TODO Login Button
                  const SizedBox(height: 30),
                  AppButton(
                    buttonColor: AppColors.primary,
                    buttonRadius: BorderRadius.circular(10),
                    buttonHeight: 35,
                    buttonText: const Text('Login', style: AppTextStyles.button),
                  ),
                ],
              ),
            ),
          ),
          // TODO Right Side: Image.
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
