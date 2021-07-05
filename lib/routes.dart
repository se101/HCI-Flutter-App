import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/Exercises/exercises.dart';
import 'package:orbitFit1/screens/forgot_password/forgot_password_screen.dart';
import 'package:orbitFit1/screens/login_success/login_success_screen.dart';
import 'package:orbitFit1/screens/sign_in/sign_in_screen.dart';
import 'package:orbitFit1/screens/sign_up/sign_up_screen.dart';
import 'package:orbitFit1/screens/splash/splash_screen.dart';

//all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ExercisesScreen.routeName: (context) => ExercisesScreen(),
};
