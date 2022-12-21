import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA7nMXYjwRwCs6vYxCHcAO7yLYhtgqDiZs",
            authDomain: "davaoprimemobile.firebaseapp.com",
            projectId: "davaoprimemobile",
            storageBucket: "davaoprimemobile.appspot.com",
            messagingSenderId: "1048965119081",
            appId: "1:1048965119081:web:73bc695774dc072bbff6f8",
            measurementId: "G-DHDSE7FX4Y"));
  } else {
    await Firebase.initializeApp();
  }
}
