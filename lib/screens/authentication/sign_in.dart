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

  final _formkey = GlobalKey<FormState>();

  // email and password
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "SIGN IN",
          style: TextStyle(color: mainWhite, fontWeight: FontWeight.bold),
        ),
        backgroundColor: bgBlack,
      ), // AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            children: [
              Text(description, style: descriptionStyle),
              Center(child: Image.asset("assets/profile.png", height: 200)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: textInputDecoration,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter a Valid Email';
                          }
                          return null;
                        },
                        onChanged: (val) => setState(() {
                          email = val;
                        }),
                      ),
                      const SizedBox(height: 14),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                          hintText: "Password",
                        ),
                        validator: (val) {
                          if (val == null || val.length < 6) {
                            return 'Enter a Valid Password';
                          }
                          return null;
                        },
                        onChanged: (val) => setState(() {
                          password = val;
                        }),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Login with social accounts",
                        style: descriptionStyle,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Handle Google sign-in
                        },
                        child: Center(
                          child: Image.asset("assets/google.png", height: 50),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Do not have an account? ",
                            style: descriptionStyle,
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Navigate to the registration screen
                            },
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                color: mainBlue,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          // Handle login
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow),
                          ),
                          child: Center(
                            child: const Text(
                              "LOG IN",
                              style: TextStyle(
                                color: mainWhite,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      GestureDetector(
                        onTap: () {
                          // Handle login
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: mainYellow),
                          ),
                          child: Center(
                            child: const Text(
                              "LOGIN AS GUEST",
                              style: TextStyle(
                                color: mainWhite,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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