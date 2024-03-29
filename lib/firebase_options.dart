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
    apiKey: 'AIzaSyCYpDND5qg5iz3CE7m6LG3_XBEkVqiPmWw',
    appId: '1:410588161611:web:2956ca553ea1e045084fce',
    messagingSenderId: '410588161611',
    projectId: 'ghardailosamma1',
    authDomain: 'ghardailosamma1.firebaseapp.com',
    storageBucket: 'ghardailosamma1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmHkwTSS_5fy9UKdT6XPaFhFLZuToDVYQ',
    appId: '1:410588161611:android:6b3d9cdbdbefaee1084fce',
    messagingSenderId: '410588161611',
    projectId: 'ghardailosamma1',
    storageBucket: 'ghardailosamma1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkfdybtqHmiVWPK2T2nMyha2GC-CeETPg',
    appId: '1:410588161611:ios:b0c788684a7c56f4084fce',
    messagingSenderId: '410588161611',
    projectId: 'ghardailosamma1',
    storageBucket: 'ghardailosamma1.appspot.com',
    iosClientId: '410588161611-00usio8qo650mj2oid1bndf6rbmus5sd.apps.googleusercontent.com',
    iosBundleId: 'com.example.delivero',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkfdybtqHmiVWPK2T2nMyha2GC-CeETPg',
    appId: '1:410588161611:ios:b0c788684a7c56f4084fce',
    messagingSenderId: '410588161611',
    projectId: 'ghardailosamma1',
    storageBucket: 'ghardailosamma1.appspot.com',
    iosClientId: '410588161611-00usio8qo650mj2oid1bndf6rbmus5sd.apps.googleusercontent.com',
    iosBundleId: 'com.example.delivero',
  );
}
