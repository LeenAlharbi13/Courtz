import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5tW2HQv_lc3Ev1uANLT_PtGDfNKFVnx8",
            authDomain: "courtz-aad7d.firebaseapp.com",
            projectId: "courtz-aad7d",
            storageBucket: "courtz-aad7d.appspot.com",
            messagingSenderId: "663705621826",
            appId: "1:663705621826:web:9f1fab35c9b00f780ba4db",
            measurementId: "G-Z5DEXMSZVT"));
  } else {
    await Firebase.initializeApp();
  }
}
