import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/size_config.dart';

class AbsContent extends StatelessWidget {
  const AbsContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Abs',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
