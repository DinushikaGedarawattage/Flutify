import 'package:flutify/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // reference to the AuthServices
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SIGN IN")), // AppBar
      body: ElevatedButton(
        child: const Text("Sign in Anonymously"),
        onPressed: () async {
          dynamic result = await _auth.signInAnonymously();
          if (result == null) {
            print("Error signing in");
          } else {
            print("Signed in");
            print(result.uid);
          }
        },
      ), // ElevatedButton
    );
  }
}
