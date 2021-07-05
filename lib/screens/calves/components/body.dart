import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/calves/components/calvescontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> calvesData = [
    {
      "text": "Jump Squat\nJump squats are an amazing lower body workout which provides so many benefits",
      "image": "assets/images/calves-jumpsquat.png",
    },
    {
      "text": "Jump Rope\nOne of the other major benefits of jumping rope is it is not only focusing on muscles in your calves.\n When you focus on jumping rope you are working on your gastrocnemius, calves, shins, quads, glutes, hamstrings and hips.",
      "image": "assets/images/calves-jumprope.png",
    },
    {
      "text": "Elevated Raises\nThe standing calf raise is very effective because it directly targets the Gastrocnemius muscle",
      "image": "assets/images/calves-elevatedraises.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: calvesData.length,
                itemBuilder: (context, index) => CalvesContent(
                  image: calvesData[index]["image"],
                  text: calvesData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        calvesData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
