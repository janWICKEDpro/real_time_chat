// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
// import 'firebase_options.dart';

//  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//  );

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
    apiKey: 'AIzaSyC5iHkZmPxSLyTl05cBiI-AWGRZ9eDsgsA',
    appId: '1:151760492220:web:3543a1cf8c0da0f64c22b9',
    messagingSenderId: '151760492220',
    projectId: 'realchat-337b4',
    authDomain: 'realchat-337b4.firebaseapp.com',
    storageBucket: 'realchat-337b4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYquELZRKY1UCE3WI9LmB2DlUKY6zgDHY',
    appId: '1:151760492220:android:0fe9a0e10af3472a4c22b9',
    messagingSenderId: '151760492220',
    projectId: 'realchat-337b4',
    storageBucket: 'realchat-337b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtK9nVYCEsOFvwojDg2k54_8KQypLFGIw',
    appId: '1:151760492220:ios:d71bd344a2c1e5334c22b9',
    messagingSenderId: '151760492220',
    projectId: 'realchat-337b4',
    storageBucket: 'realchat-337b4.appspot.com',
    iosClientId:
        '151760492220-iba26rqt3tsi65jpdla4u7psqfimd95g.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}