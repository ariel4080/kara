import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform => _ios; // for now only iOS is supported

  static const FirebaseOptions _ios = FirebaseOptions(
    apiKey: 'AIzaSyAP1OC5WPTBc0iZIJmCBmzoBtUEmWP00FQ',
    appId: '1:339748717978:ios:1e7bd0e76cf3a176616623',
    messagingSenderId: '339748717978',
    projectId: 'kara-9f053',
    iosBundleId: 'com.example.kara',
    storageBucket: 'kara-9f053.firebasestorage.app',
  );
}