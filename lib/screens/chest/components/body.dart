import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/chest/components/chestcontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> chestData = [
    {
      "text": "PushUps\nThe pushup needs no introduction—it is one of the greatest exercises there is.\n Not only does it strengthen your chest, but it also trains your core and builds conditioning (with no equipment necessary).",
      "image": "assets/images/chest-pushups.png", 
    },
    {
      "text": "Knee-Pushups\nThe knee push-up is a compound bodyweight exercise which builds muscle and strength in the chest muscles.",
      "image": "assets/images/chest-kneepushups1.png",
    },
    {
      "text": "Leaning Forwards\nThe best compound chest exercises will target multiple muscle groups including the pectoralis major and pectoralis minor, but will also engage parts of the arms, back, and shoulders.",
      "image": "assets/images/chest-benforward1.png",
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
                itemCount: chestData.length,
                itemBuilder: (context, index) => ChestContent(
                  image: chestData[index]["image"],
                  text: chestData[index]["text"],
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
                        chestData.length,
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
