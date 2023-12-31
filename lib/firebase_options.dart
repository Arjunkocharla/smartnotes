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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyByhIoK3ytG-IYVF9aq7bruTwjM8gWxZQw',
    appId: '1:915135748319:web:9d6163450d0cd12af7316a',
    messagingSenderId: '915135748319',
    projectId: 'smartnotes-ai',
    authDomain: 'smartnotes-ai.firebaseapp.com',
    storageBucket: 'smartnotes-ai.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9GphI6SBsNBtWWmVcIdH3UWA_E1mnNuY',
    appId: '1:915135748319:android:2f41e35597c29e60f7316a',
    messagingSenderId: '915135748319',
    projectId: 'smartnotes-ai',
    storageBucket: 'smartnotes-ai.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABGnsPB2QBAM-PY1le4CFuwFNBNx5Fnyo',
    appId: '1:915135748319:ios:40ab1ac6f37e6810f7316a',
    messagingSenderId: '915135748319',
    projectId: 'smartnotes-ai',
    storageBucket: 'smartnotes-ai.appspot.com',
    iosBundleId: 'ai.smartnotezz.smartnotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABGnsPB2QBAM-PY1le4CFuwFNBNx5Fnyo',
    appId: '1:915135748319:ios:dfdb60e8d6c5db57f7316a',
    messagingSenderId: '915135748319',
    projectId: 'smartnotes-ai',
    storageBucket: 'smartnotes-ai.appspot.com',
    iosBundleId: 'ai.smartnotezz.smartnotes.RunnerTests',
  );
}
