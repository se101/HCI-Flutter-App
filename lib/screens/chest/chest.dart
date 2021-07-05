import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/chest/components/body.dart';

class ChestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chest'),
      ),
      body: Body(),
    );
  }
}
