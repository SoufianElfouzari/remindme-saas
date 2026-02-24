import 'package:flutter/material.dart';
import 'package:remindme/app.dart';
import 'package:remindme/screens/dashboard_screen.dart';
import 'package:remindme/services/appwrite_client.dart';
import 'package:remindme/utils/check_login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppwriteClient.init();
  isLoggedIn().then((isLoggedIn) {
    runApp(isLoggedIn ? const DashboardScreen() : const App());
  });
}
