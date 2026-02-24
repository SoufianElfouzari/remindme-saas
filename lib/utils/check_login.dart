import 'package:remindme/services/appwrite_client.dart';

Future<bool> isLoggedIn() async {
  try {
    await AppwriteClient.account.get();
    return true;
  } catch (e) {
    return false;
  }
}