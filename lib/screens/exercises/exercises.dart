import 'package:flutter/material.dart';
import 'package:orbitFit1/provider/auth.dart';
import 'package:orbitFit1/screens/exercises/components/body.dart';
import 'package:orbitFit1/screens/exercises/navBar.dart';
import 'package:orbitFit1/screens/sign_in/sign_in_screen.dart';

class ExercisesScreen extends StatefulWidget {
  static String routeName = "/exercises";

  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrbitFit'),
        actions: [
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
              Navigator.popAndPushNamed(context, SignInScreen.routeName);
            },
            icon: Icon(
              Icons.person,
              color: Color(0xFF8B8B8B),
            ),
            label: Text(
              "LogOut",
              style: TextStyle(color: Color(0xFF8B8B8B)),
            ),
          )
        ],
      ),
      body: Body(),
      drawer: NavBar(),
    );
  }
}
