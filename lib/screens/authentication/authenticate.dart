import 'package:flutify/screens/authentication/register.dart';
import 'package:flutify/screens/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool signinpage = true;

  void switchPage() {
    setState(() {
      signinpage = !signinpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signinpage == true) {
      return SignIn(toggle: switchPage);
    } else {
      return Register(toggle: switchPage);
    }
  }
}
