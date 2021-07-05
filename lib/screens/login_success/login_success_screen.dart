import 'package:flutter/material.dart';
import 'package:orbitFit1/size_config.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Successful"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
