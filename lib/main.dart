import 'package:flutter/material.dart';
import 'package:orbitFit1/models/user.dart';
import 'package:orbitFit1/provider/auth.dart';
import 'package:orbitFit1/routes.dart';
import 'package:orbitFit1/screens/splash/splash_screen.dart';
import 'package:orbitFit1/theme.dart';
import 'package:orbitFit1/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: theme(),
        //home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
        home: Wrapper(),
      ),
    );
  }
}
