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
    apiKey: 'AIzaSyChG6F0SBlPFbzLifhVrfeW0UR23WeQPVI',
    appId: '1:259335677116:web:02b4f66f2d4dfca2e89cb9',
    messagingSenderId: '259335677116',
    projectId: 'postit-e8326',
    authDomain: 'postit-e8326.firebaseapp.com',
    storageBucket: 'postit-e8326.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEq99qnQUiPbLN_1yBHE3gDzqHDXXTMsE',
    appId: '1:259335677116:android:2e9fd98751671689e89cb9',
    messagingSenderId: '259335677116',
    projectId: 'postit-e8326',
    storageBucket: 'postit-e8326.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyChG6F0SBlPFbzLifhVrfeW0UR23WeQPVI',
    appId: '1:259335677116:web:62203844d160ac9ee89cb9',
    messagingSenderId: '259335677116',
    projectId: 'postit-e8326',
    authDomain: 'postit-e8326.firebaseapp.com',
    storageBucket: 'postit-e8326.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIw6_HBxSK5TfaNR4aNFLmxyx4YwfwmAI',
    appId: '1:259335677116:ios:d443a59e6007a238e89cb9',
    messagingSenderId: '259335677116',
    projectId: 'postit-e8326',
    storageBucket: 'postit-e8326.appspot.com',
    iosBundleId: 'com.example.postitApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIw6_HBxSK5TfaNR4aNFLmxyx4YwfwmAI',
    appId: '1:259335677116:ios:d443a59e6007a238e89cb9',
    messagingSenderId: '259335677116',
    projectId: 'postit-e8326',
    storageBucket: 'postit-e8326.appspot.com',
    iosBundleId: 'com.example.postitApp',
  );

}