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
    apiKey: 'AIzaSyBxdj0JJbWs9Uz90FB1bs-baOOa2jfgp7o',
    appId: '1:294012140480:web:9c963e3d0481becad2e625',
    messagingSenderId: '294012140480',
    projectId: 'servicio-app-88893',
    authDomain: 'servicio-app-88893.firebaseapp.com',
    storageBucket: 'servicio-app-88893.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCsr72_Sh74iLrqwRybO3aYRBNngTnZzQ',
    appId: '1:294012140480:android:f80aef342528ee51d2e625',
    messagingSenderId: '294012140480',
    projectId: 'servicio-app-88893',
    storageBucket: 'servicio-app-88893.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2zQxl2p9jq_J7IL90i32-fXOi3GX88es',
    appId: '1:294012140480:ios:5a2ad7e6eed5d0ecd2e625',
    messagingSenderId: '294012140480',
    projectId: 'servicio-app-88893',
    storageBucket: 'servicio-app-88893.firebasestorage.app',
    iosBundleId: 'com.example.servicioApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2zQxl2p9jq_J7IL90i32-fXOi3GX88es',
    appId: '1:294012140480:ios:5a2ad7e6eed5d0ecd2e625',
    messagingSenderId: '294012140480',
    projectId: 'servicio-app-88893',
    storageBucket: 'servicio-app-88893.firebasestorage.app',
    iosBundleId: 'com.example.servicioApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBxdj0JJbWs9Uz90FB1bs-baOOa2jfgp7o',
    appId: '1:294012140480:web:c83e568e64562659d2e625',
    messagingSenderId: '294012140480',
    projectId: 'servicio-app-88893',
    authDomain: 'servicio-app-88893.firebaseapp.com',
    storageBucket: 'servicio-app-88893.firebasestorage.app',
  );
}