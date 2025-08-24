import 'package:flutify/models/usermodel.dart';
import 'package:flutify/screens/wrapper.dart';
import 'package:flutify/services/auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (const bool.fromEnvironment('dart.library.js_util')) {
    // Running on web, provide FirebaseOptions
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCSau9JVZBW8fyy3RciPD1l3nWh4-Q1vp8',
        authDomain: 'flutify-9dc17.firebaseapp.com',
        projectId: 'flutify-9dc17',
        storageBucket: 'flutify-9dc17.appspot.com',
        messagingSenderId: '982813905225',
        appId: '1:982813905225:web:b2e997881addf23b89ca98',
        measurementId: 'YOUR_MEASUREMENT_ID', // optional
      ),
    );
  } else {
    // Mobile/desktop
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ''),
      value: AuthServices().user,
      child: MaterialApp(home: Wrapper()),
    );
  }
}
