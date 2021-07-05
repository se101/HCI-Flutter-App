import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/sign_in/sign_in_screen.dart';
import 'package:orbitFit1/screens/BMI/bmi.dart';
import 'package:orbitFit1/screens/macros/overweight.dart';
import 'package:orbitFit1/screens/macros/underweight.dart';
import 'package:orbitFit1/screens/macros/normalweight.dart';
import 'package:orbitFit1/screens/workouts/normalWeight.dart';
import 'package:orbitFit1/screens/workouts/overWeight.dart';
import 'package:orbitFit1/screens/workouts/underWeight.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Sriharsha Amam'),
            accountEmail: Text('harshaamam2002@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profilepic.webp',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1539923779676-1a9bddf986db?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMTU1NTIzfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.fitness_center,
              size: 40,
            ),
            title: Text(
              'Workouts',
              textScaleFactor: 1.4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              if (gotcha == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OverWeightWorkoutScreen()));
              } else if (gotcha == 2) {
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NormalWeightWorkoutScreen()));
                }
              } else if (gotcha == 3) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnderWeightWorkoutScreen()));
              } else {}
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.food_bank,
              size: 40,
            ),
            title: Text(
              'Macros',
              textScaleFactor: 1.4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              if (gotcha == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OverWeightMacrosScreen()));
              } else if (gotcha == 2) {
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NormalWeightMacrosScreen()));
                }
              } else if (gotcha == 3) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnderWeightMacrosScreen()));
              } else {}
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 40,
            ),
            title: Text(
              'Profile',
              textScaleFactor: 1.4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () => print('fav'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.calculate,
              size: 40,
            ),
            title: Text(
              'BMI calculator',
              textScaleFactor: 1.4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiScreen(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 40,
            ),
            title: Text(
              'Exit',
              textScaleFactor: 1.4,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(
                context,
              );
              Navigator.popAndPushNamed(
                context,
                SignInScreen.routeName,
              );
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "NOTE: Please calculate your BMI before accessing \"Workouts\" or \"Macros\" section to help us give you suitable workout and diet plans"),
          ),
        ],
      ),
    );
  }
}
