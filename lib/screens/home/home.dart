import 'package:flutify/constants/colors.dart';
import 'package:flutify/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          backgroundColor: bgBlack,
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(bgBlack),
              ),
              onPressed: () async {
                await _auth.signOut();
              },
              child: const Icon(Icons.logout, color: mainWhite),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "FLUTIFY",
                  style: TextStyle(
                    color: mainWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome to Flutify! \nYou can easily manage your work and explore features using Flutify.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textLight,
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20),
                Center(child: Image.asset("assets/profile.png", height: 200)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
