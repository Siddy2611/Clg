// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAJ4ZScYBMBIjrcCRbMPzC8AiGyGmOHVVc',
    appId: '1:442240020234:web:8e942f10bf6ae04b84d4f3',
    messagingSenderId: '442240020234',
    projectId: 'activitytracker-d50aa',
    authDomain: 'activitytracker-d50aa.firebaseapp.com',
    storageBucket: 'activitytracker-d50aa.firebasestorage.app',
    measurementId: 'G-72F3KRPDJ8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq9Vt-M0gaWo3ay84rjgfiv2yE7vHhPC8',
    appId: '1:442240020234:android:217dfb85372009e884d4f3',
    messagingSenderId: '442240020234',
    projectId: 'activitytracker-d50aa',
    storageBucket: 'activitytracker-d50aa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvpkXfM-zgY1Cp6HuWcyLo-ycBcdKkNT8',
    appId: '1:442240020234:ios:0997d974a32d088184d4f3',
    messagingSenderId: '442240020234',
    projectId: 'activitytracker-d50aa',
    storageBucket: 'activitytracker-d50aa.firebasestorage.app',
    iosBundleId: 'com.example.activitytracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvpkXfM-zgY1Cp6HuWcyLo-ycBcdKkNT8',
    appId: '1:442240020234:ios:0997d974a32d088184d4f3',
    messagingSenderId: '442240020234',
    projectId: 'activitytracker-d50aa',
    storageBucket: 'activitytracker-d50aa.firebasestorage.app',
    iosBundleId: 'com.example.activitytracker',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJ4ZScYBMBIjrcCRbMPzC8AiGyGmOHVVc',
    appId: '1:442240020234:web:97041f77efb0a9bb84d4f3',
    messagingSenderId: '442240020234',
    projectId: 'activitytracker-d50aa',
    authDomain: 'activitytracker-d50aa.firebaseapp.com',
    storageBucket: 'activitytracker-d50aa.firebasestorage.app',
    measurementId: 'G-SNXM5Q92RS',
  );
}
