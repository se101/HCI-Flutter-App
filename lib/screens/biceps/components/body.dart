import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/biceps/components/bicepscontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> bicepsData = [
    {
      "text": "Shoulder Tap\nThe shoulder tap is an exercise targeting the core.\n The basic stance matches the top of a push-up position. ",
      "image": "assets/images/biceps-shouldertap.png",
    },
    {
      "text": "Extension\nBiceps stretch is performed to increase the flexibility of the biceps brachii muscle. ",
      "image": "assets/images/biceps-extension.png",
    },
    {
      "text": "SpiderMan Pushups\nThe Spiderman push-up is an advanced push-up progression that trains the biceps and shoulders. \nThe movement also strengthens the core and improves balance.",
      "image": "assets/images/biceps-spidermanpushups.png",
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
                itemCount: bicepsData.length,
                itemBuilder: (context, index) => BicepsContent(
                  image: bicepsData[index]["image"],
                  text: bicepsData[index]["text"],
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
                        bicepsData.length,
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
