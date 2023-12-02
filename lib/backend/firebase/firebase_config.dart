import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqqt9pB81SKRMcNDE6Kl1ul1rkyW0mzZU",
            authDomain: "fomedeque-d4480.firebaseapp.com",
            projectId: "fomedeque-d4480",
            storageBucket: "fomedeque-d4480.appspot.com",
            messagingSenderId: "419962254076",
            appId: "1:419962254076:web:9ce7ec021b7d07b4a2dd79"));
  } else {
    await Firebase.initializeApp();
  }
}
