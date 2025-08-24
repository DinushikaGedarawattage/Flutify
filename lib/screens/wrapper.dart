import 'package:flutify/models/usermodel.dart';
import 'package:flutify/screens/authentication/authenticate.dart';
import 'package:flutify/screens/home/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    return user == null ? Authenticate() : Home();
  }
}
