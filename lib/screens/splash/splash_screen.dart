import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/splash/components/body.dart';
import 'package:orbitFit1/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  //you have to call it on your starting screen
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
