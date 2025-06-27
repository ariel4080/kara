import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform => _ios; // for now only iOS is supported

  static String getEnvValue(String value) => dotenv.env[value] ?? (throw Exception('Variable $value not found in .env')); 

  static final FirebaseOptions _ios = FirebaseOptions(
    apiKey: getEnvValue('API_KEY'),
    appId: getEnvValue('API_ID'),
    messagingSenderId: getEnvValue('MESSAGE_SENDER_ID'),
    projectId: getEnvValue('PROJECT_ID'),
    iosBundleId: getEnvValue('IOS_BUNDLE_ID'),
    storageBucket: getEnvValue('STORAGE_BUCKET'),
  );
}