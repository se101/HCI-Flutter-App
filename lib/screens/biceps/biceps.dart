import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/biceps/components/body.dart';

class BicepsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biceps'),
      ),
      body: Body(),
    );
  }
}