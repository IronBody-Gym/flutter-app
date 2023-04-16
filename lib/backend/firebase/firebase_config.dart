import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCWMDNlbTaJ_SZxmWoJLsncqTgaskXlAU",
            authDomain: "iron-body-e88f7.firebaseapp.com",
            projectId: "iron-body-e88f7",
            storageBucket: "iron-body-e88f7.appspot.com",
            messagingSenderId: "1043257026823",
            appId: "1:1043257026823:web:1f2c0e87fc46db40b57da2"));
  } else {
    await Firebase.initializeApp();
  }
}
