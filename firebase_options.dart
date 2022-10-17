// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBhWuU_bNKkywzLFQhZ6uhE1-NYsyHffbM',
    appId: '1:499345530049:web:c3ba9cecb4689158344840',
    messagingSenderId: '499345530049',
    projectId: 'technical-comprehension-dbf15',
    authDomain: 'technical-comprehension-dbf15.firebaseapp.com',
    databaseURL: 'https://technical-comprehension-dbf15-default-rtdb.firebaseio.com',
    storageBucket: 'technical-comprehension-dbf15.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-YLCPKDnpTWo_uwk-2EPrHs3KShrFEpU',
    appId: '1:499345530049:android:38b84561e0d5238d344840',
    messagingSenderId: '499345530049',
    projectId: 'technical-comprehension-dbf15',
    databaseURL: 'https://technical-comprehension-dbf15-default-rtdb.firebaseio.com',
    storageBucket: 'technical-comprehension-dbf15.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQIO35_M6Ww-WnIhxFU9NUZf5Qgd5DHz4',
    appId: '1:499345530049:ios:7707c18fadf94776344840',
    messagingSenderId: '499345530049',
    projectId: 'technical-comprehension-dbf15',
    databaseURL: 'https://technical-comprehension-dbf15-default-rtdb.firebaseio.com',
    storageBucket: 'technical-comprehension-dbf15.appspot.com',
    iosClientId: '499345530049-4ic788sq3dhdf1acff8oqkr2121edbqk.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
