import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC31Hmu1P-s2iEzCKIUqt-wYPCLd2Ebb6c",
            authDomain: "eddycafe-8d9d5.firebaseapp.com",
            projectId: "eddycafe-8d9d5",
            storageBucket: "eddycafe-8d9d5.appspot.com",
            messagingSenderId: "153575110904",
            appId: "1:153575110904:web:44a0e07c5167527dc1230d",
            measurementId: "G-7SKW7ZE78Z"));
  } else {
    await Firebase.initializeApp();
  }
}
