import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/cardio/components/body.dart';

class CardioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardio'),
      ),
      body: Body(),
    );
  }
}
