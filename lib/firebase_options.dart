import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform =>
      defaultTargetPlatform == TargetPlatform.android ? _android : _ios;

  static String getEnvValue(String value) =>
      dotenv.env[value] ??
      (throw Exception('Variable $value not found in .env'));

  static final FirebaseOptions _ios = FirebaseOptions(
    apiKey: getEnvValue('IOS_API_KEY'),
    appId: getEnvValue('IOS_API_ID'),
    messagingSenderId: getEnvValue('IOS_MESSAGE_SENDER_ID'),
    projectId: getEnvValue('IOS_PROJECT_ID'),
    iosBundleId: getEnvValue('IOS_BUNDLE_ID'),
    storageBucket: getEnvValue('IOS_STORAGE_BUCKET'),
  );

  static final FirebaseOptions _android = FirebaseOptions(
    apiKey: getEnvValue('ANDROID_API_KEY'),
    appId: getEnvValue('ANDROID_API_ID'),
    messagingSenderId: getEnvValue('ANDROID_MESSAGE_SENDER_ID'),
    projectId: getEnvValue('ANDROID_PROJECT_ID'),
    iosBundleId: getEnvValue('ANDROID_BUNDLE_ID'),
    storageBucket: getEnvValue('ANDROID_STORAGE_BUCKET'),
  );
}
