import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/abs/components/abscontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> absData = [
    {
      "text": "Plank\nThe plank exercise can be used as the basis for a core muscle strength and stability test.\nThe plank is more of a strength-building exercise than a cardio exercise, but by engaging a range of muscles it does boost your calorie burn a bit.",
      "image": "assets/images/abs-plank1.png",
    },
    {
      "text": "Leg Raises\nIf you're serious about strengthening your abs, you should be doing some sort of leg raises.\nThey're such a good exercise because they work all parts of your abs, especially the lower abs ",
      "image": "assets/images/abs-legraises1.png",
    },
    {
      "text": "Twist\nTwist exercises not only work on your upper and lower abdominals, but also works on the oblique muscles.",
      "image": "assets/images/abs-twist1.png",
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
                itemCount: absData.length,
                itemBuilder: (context, index) => AbsContent(
                  image: absData[index]["image"],
                  text: absData[index]["text"],
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
                        absData.length,
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
