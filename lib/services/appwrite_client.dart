import 'package:appwrite/appwrite.dart';
import 'package:remindme/constants/services/appwrite_config.dart';

class AppwriteClient {
  static late final Client _client;
  static late final Account account;
  static late final Databases databases;
  static late final Storage storage;
  static late final Functions functions;

  static void init() {
    _client = Client()
        .setEndpoint(AppwriteConfig.endpoint)
        .setProject(AppwriteConfig.projectId)
        .setSelfSigned(status: false); // This is only for development, remove if you are trying to deploy or make it false!

    account = Account(_client);
    databases = Databases(_client);
    storage = Storage(_client);
    functions = Functions(_client);
  }

  static Client get client => _client;
}