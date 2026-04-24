import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('DefaultFirebaseOptions have not been configured for web - '
          'you can reconfigure by downloading the GoogleServices-Info.plist file from https://console.firebase.google.com/');
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError('DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure by downloading the GoogleServices-Info.plist file from https://console.firebase.google.com/');
      case TargetPlatform.macOS:
        throw UnsupportedError('DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure by downloading the GoogleServices-Info.plist file from https://console.firebase.google.com/');
      default:
        throw UnsupportedError('Unsupported platform');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqejjPA9A_1lot2hDOr2L6Hu8wUasg2l4',
    appId: '1:350035527131:android:8ce59b028668856c7a93fe',
    messagingSenderId: '350035527131',
    projectId: 'gamerz-328f1',
    storageBucket: 'gamerz-328f1.firebasestorage.app',
    authDomain: 'gamerz-328f1.firebaseapp.com',
    databaseURL: 'https://gamerz-328f1-default-rtdb.firebaseio.com',
  );
}
