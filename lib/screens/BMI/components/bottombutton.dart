import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: Color(0xFF1D1E33),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: 70.0,
      ),
    );
  }
}
