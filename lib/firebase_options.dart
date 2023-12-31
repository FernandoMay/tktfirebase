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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD8KeIqAOjaN627qIAEHsEQwtvI0Mu3wns',
    appId: '1:747924534231:web:07f2e6c43e743241ad9192',
    messagingSenderId: '747924534231',
    projectId: 'tuto1-b7c0c',
    authDomain: 'tuto1-b7c0c.firebaseapp.com',
    databaseURL: 'https://tuto1-b7c0c.firebaseio.com',
    storageBucket: 'tuto1-b7c0c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm6TK_SlncIfCSY3pi3k_IJ7zAhAYzh5c',
    appId: '1:747924534231:android:bb3f9fbf64ddd8e5ad9192',
    messagingSenderId: '747924534231',
    projectId: 'tuto1-b7c0c',
    databaseURL: 'https://tuto1-b7c0c.firebaseio.com',
    storageBucket: 'tuto1-b7c0c.appspot.com',
  );
}
