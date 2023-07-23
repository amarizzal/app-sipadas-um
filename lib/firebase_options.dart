// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtuqpA4SMdKCFMDyVeYy5AxY3mqB3KjwU',
    appId: '1:986575101969:android:5b5f4d7a5dd2ba85cb91b0',
    messagingSenderId: '986575101969',
    projectId: 'smart-parking-system-lora-iot',
    databaseURL: 'https://smart-parking-system-lora-iot-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'smart-parking-system-lora-iot.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDF8t16Zzytryi-ZcnuuYglHkWRKe5jUGk',
    appId: '1:986575101969:ios:03caf7338e54e375cb91b0',
    messagingSenderId: '986575101969',
    projectId: 'smart-parking-system-lora-iot',
    databaseURL: 'https://smart-parking-system-lora-iot-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'smart-parking-system-lora-iot.appspot.com',
    iosClientId: '986575101969-1k0kkckiib4d1l5stdne0d44tl6bf58d.apps.googleusercontent.com',
    iosBundleId: 'com.example.appSipadasUm',
  );
}