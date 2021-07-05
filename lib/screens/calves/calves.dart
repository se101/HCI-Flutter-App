import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/calves/components/body.dart';

class CalvesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calves'),
      ),
      body: Body(),
    );
  }
}