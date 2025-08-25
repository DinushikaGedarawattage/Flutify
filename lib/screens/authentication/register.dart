import 'package:flutify/constants/colors.dart';
import 'package:flutify/constants/description.dart';
import 'package:flutify/constants/styles.dart';
import 'package:flutify/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          "REGISTER",
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
                        obscureText: true,
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
                              "LOG IN",
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
                              "REGISTER",
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
