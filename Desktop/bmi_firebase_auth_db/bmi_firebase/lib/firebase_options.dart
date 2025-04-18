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
    apiKey: 'AIzaSyBqdfGIw9egjlph8xAAZWz-0_tqIk2_1mk',
    appId: '1:524917399515:web:264646d06d5956c3c7d1fe',
    messagingSenderId: '524917399515',
    projectId: 'bmi-ver3',
    authDomain: 'bmi-ver3.firebaseapp.com',
    storageBucket: 'bmi-ver3.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxIihD2JSOdqouQsade4mfPPgRP2QDczY',
    appId: '1:524917399515:android:ac697d06099d0556c7d1fe',
    messagingSenderId: '524917399515',
    projectId: 'bmi-ver3',
    storageBucket: 'bmi-ver3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA90IfEoSZ4OrK3qntsTm4G9uNGhAd6Sjo',
    appId: '1:524917399515:ios:30a247d1bd3e3e85c7d1fe',
    messagingSenderId: '524917399515',
    projectId: 'bmi-ver3',
    storageBucket: 'bmi-ver3.firebasestorage.app',
    iosBundleId: 'com.example.bmiFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA90IfEoSZ4OrK3qntsTm4G9uNGhAd6Sjo',
    appId: '1:524917399515:ios:30a247d1bd3e3e85c7d1fe',
    messagingSenderId: '524917399515',
    projectId: 'bmi-ver3',
    storageBucket: 'bmi-ver3.firebasestorage.app',
    iosBundleId: 'com.example.bmiFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBqdfGIw9egjlph8xAAZWz-0_tqIk2_1mk',
    appId: '1:524917399515:web:36430a738a673b48c7d1fe',
    messagingSenderId: '524917399515',
    projectId: 'bmi-ver3',
    authDomain: 'bmi-ver3.firebaseapp.com',
    storageBucket: 'bmi-ver3.firebasestorage.app',
  );
}
