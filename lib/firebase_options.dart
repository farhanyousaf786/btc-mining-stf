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
    apiKey: 'AIzaSyAeJM0GZ1N2-s-OB5A3HPli6oO2CO3wDH8',
    appId: '1:840260121877:web:456dca6c1691f3df06e51c',
    messagingSenderId: '840260121877',
    projectId: 'btc-mining-stf',
    authDomain: 'btc-mining-stf.firebaseapp.com',
    storageBucket: 'btc-mining-stf.appspot.com',
    measurementId: 'G-Q2SPN41YZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXsuyedV4b3mp7JEe9NYKJVZVPsKjJRSM',
    appId: '1:840260121877:android:01357d514e2ba4bf06e51c',
    messagingSenderId: '840260121877',
    projectId: 'btc-mining-stf',
    storageBucket: 'btc-mining-stf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrERVYKDFPHTKbtRc4MilEsFOs_kcI_Zg',
    appId: '1:840260121877:ios:180e154f093a0c7906e51c',
    messagingSenderId: '840260121877',
    projectId: 'btc-mining-stf',
    storageBucket: 'btc-mining-stf.appspot.com',
    iosBundleId: 'com.example.bitcoinMining',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrERVYKDFPHTKbtRc4MilEsFOs_kcI_Zg',
    appId: '1:840260121877:ios:180e154f093a0c7906e51c',
    messagingSenderId: '840260121877',
    projectId: 'btc-mining-stf',
    storageBucket: 'btc-mining-stf.appspot.com',
    iosBundleId: 'com.example.bitcoinMining',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAeJM0GZ1N2-s-OB5A3HPli6oO2CO3wDH8',
    appId: '1:840260121877:web:a4a396a1c4a07dc106e51c',
    messagingSenderId: '840260121877',
    projectId: 'btc-mining-stf',
    authDomain: 'btc-mining-stf.firebaseapp.com',
    storageBucket: 'btc-mining-stf.appspot.com',
    measurementId: 'G-7Y565KC3WT',
  );
}
