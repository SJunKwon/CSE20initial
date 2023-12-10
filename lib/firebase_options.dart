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
    apiKey: 'AIzaSyCO2_xb0ITD12yGER3eMUK8slL0uuhUJRI',
    appId: '1:666098263353:web:13867bafda1ad14f03b4e8',
    messagingSenderId: '666098263353',
    projectId: 'facetap-d4d1a',
    authDomain: 'facetap-d4d1a.firebaseapp.com',
    storageBucket: 'facetap-d4d1a.appspot.com',
    measurementId: 'G-XG7FW6B4S2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAto_ESe7XvXXvkfU36oCI_OBPfBgAhkrU',
    appId: '1:666098263353:android:e5e9ce888480344103b4e8',
    messagingSenderId: '666098263353',
    projectId: 'facetap-d4d1a',
    storageBucket: 'facetap-d4d1a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNpIf4Zs1i2LfzLuj3mn_JaU-dzTxf49c',
    appId: '1:666098263353:ios:e95750277922b34d03b4e8',
    messagingSenderId: '666098263353',
    projectId: 'facetap-d4d1a',
    storageBucket: 'facetap-d4d1a.appspot.com',
    iosBundleId: 'com.marcgozsapplication.app',
  );
}