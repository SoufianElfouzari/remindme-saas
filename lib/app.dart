import 'package:flutter/material.dart';
import 'package:remindme/screens/login_screen.dart';
import 'package:remindme/screens/shell_page.dart';
import 'package:remindme/utils/check_login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: isLoggedIn(),
      builder: (context, snapshot) {
        // This is Returend while checking login status
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(body: Center(child: CircularProgressIndicator())),
          );
        }

       if (snapshot.hasError) {
          return const MaterialApp(home: LoginScreen());
        }

        if (snapshot.data == true) {
          return const MaterialApp(home: ShellPage());
        }

        // Default: Not logged in
        return const MaterialApp(home: LoginScreen());
      },
    );
  }
}
