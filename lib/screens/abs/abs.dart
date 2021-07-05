import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/abs/components/body.dart';

class AbsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abs'),
      ),
      body: Body(),
    );
  }
}
