import 'dart:math';
import 'package:orbitFit1/screens/BMI/bmi.dart';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      gotcha = 1;
      return 'Overweight';
    } else if (_bmi > 18.5) {
      gotcha = 2;
      return 'Normal';
    } else {
      gotcha = 3;
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You weigh more than normal body weight. Try to exercise more. You can access generally customized workouts and diet of overweight people in the \"Workouts\" and \"Macros\" sections respectively ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job! You can access generally customized workouts and diet of normal weighing people in the \"Workouts\" and \"Macros\" sections respectively ';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more. You can access generally customized workouts and diet of underweight people in the \"Workouts\" and \"Macros\" sections respectively';
    }
  }
}
