import 'package:flutter/material.dart';
import 'package:orbitFit1/models/user.dart';
import 'package:orbitFit1/screens/login_success/login_success_screen.dart';
import 'package:orbitFit1/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user != null) {
      return SplashScreen();
    } else {
      return LoginSuccessScreen();
    }
  }
}
