import 'package:flutter/material.dart';
import 'package:orbitFit1/components/social_card.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/sign_up/components/sign_up_form.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Text(
                  "Register Account",
                  style: headingStyle,
                ),
                Text(
                  "Complete your details \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.07,
                ),
                SignUpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/facebook_2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/google_icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
