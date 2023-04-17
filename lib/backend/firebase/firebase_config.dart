import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAfb7lsgKaKD-FAQ18CddEV-5gceObCl8c",
            authDomain: "serene-baby.firebaseapp.com",
            projectId: "serene-baby",
            storageBucket: "serene-baby.appspot.com",
            messagingSenderId: "790636412913",
            appId: "1:790636412913:web:89682cb41a207a18ba4e50",
            measurementId: "G-XJWN41H0ST"));
  } else {
    await Firebase.initializeApp();
  }
}
