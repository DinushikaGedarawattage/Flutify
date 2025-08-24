import 'package:flutify/constants/description.dart';
import 'package:flutify/constants/styles.dart';
import 'package:flutify/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutify/constants/colors.dart';

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
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text(
          "SIGN IN",
          style: TextStyle(color: mainWhite, fontWeight: FontWeight.bold),
        ),
        backgroundColor: bgBlack,
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            Text(description, style: descriptionStyle),
            Center(child: Image.asset("assets/profile.png", height: 200)),
            // Form(child:Column())
          ],
        ),
      ),
    );
  }
}


//  ElevatedButton(
//         child: const Text("Sign in Anonymously"),
//         onPressed: () async {
//           dynamic result = await _auth.signInAnonymously();
//           if (result == null) {
//             print("Error signing in");
//           } else {
//             print("Signed in");
//             print(result.uid);
//           }
//         },
//       ),