import 'package:flutter/material.dart';
import 'package:remindme/app.dart';
import 'package:remindme/services/appwrite_client.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppwriteClient.init();
  runApp(const App());
}
