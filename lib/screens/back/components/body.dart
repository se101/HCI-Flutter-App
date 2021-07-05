import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/back/components/backcontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> backData = [
    {
      "text": "Arm Leg Raise\nAlternative Arm/Leg Raises challenge your core and help you develop better balance and stability.",
      "image": "assets/images/back-armlegraise.png",
    },
    {
      "text": "Side Plank\nReduces your risk of a back injury.\nIncluding planks and side planks in your training program may help reduce your risk of a back injury.",
      "image": "assets/images/back-sideplank.png",
    },
    {
      "text": "Streches\nLower back stretches to increase flexibility and relieve pain.",
      "image": "assets/images/back-streches.png",
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
                itemCount: backData.length,
                itemBuilder: (context, index) => BackContent(
                  image: backData[index]["image"],
                  text: backData[index]["text"],
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
                        backData.length,
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
