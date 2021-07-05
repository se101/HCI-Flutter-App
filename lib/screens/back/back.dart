import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/back/components/body.dart';

class BackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Body(),
    );
  }
}
