import 'package:flutter/material.dart';
import 'package:remindme/utils/check_login.dart';
import 'package:remindme/screens/shell_page.dart';
import 'package:remindme/widgets/common/button.dart';
import 'package:remindme/constants/theme/colors.dart';
import 'package:remindme/services/start_session.dart';
import 'package:remindme/widgets/common/text_field.dart';
import 'package:remindme/constants/theme/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
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
                        emailController, //Todo: Placeholder Controller ersetzen
                  ),

                  const SizedBox(height: 22),

                  AppTextField(
                    label: 'Passwort eingeben',
                    controller:
                        passwordController, //Todo: Placeholder Controller ersetzen
                  ),
                  const SizedBox(height: 30),
                  AppButton(
                    onPressed: () async {
                      await startSession(emailController, passwordController);
                      // check if login was successful and navigate to dashboard
                      if (await isLoggedIn()) {
                        if (context.mounted) {
                          // Nagiator PUSH material page route to dashboard
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShellPage(),
                            ),
                          );
                        }
                        debugPrint('Login successful');
                      } else {
                        // show error message
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Login failed')),
                          );
                        }
                      }
                    },
                    buttonHeight: 35,
                    buttonColor: AppColors.primary,
                    buttonRadius: BorderRadius.circular(10),
                    buttonText: const Text(
                      'Login',
                      style: AppTextStyles.button,
                    ),
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
