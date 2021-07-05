import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/cardio/components/cardiocontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> cardioData = [
    {
      "text": "Running\nRunning is among the best aerobic exercises for physical conditioning of your heart and lungs.\nStudies have shown the health benefits to be enormous, reducing the likelihood of everything from the common cold to cancer. ",
      "image": "assets/images/running.png",
    },
    {
      "text": "Skipping\nrope jumping is a great form of cardio exercise. It increases the heart rate.\nThis allows the heart muscles to work harder to pump oxygenated and deoxygenated blood across the body, thereby promoting heart health and gain height.",
      "image": "assets/images/skipping.png",
    },
    {
      "text": "Cycling\nRegular cycling stimulates and improves your heart, lungs and circulation, reducing your risk of cardiovascular diseases.\nCycling strengthens your heart muscles, lowers resting pulse and reduces blood fat levels.",
      "image": "assets/images/cycling.png",
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
                itemCount: cardioData.length,
                itemBuilder: (context, index) => CardioContent(
                  image: cardioData[index]["image"],
                  text: cardioData[index]["text"],
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
                        cardioData.length,
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
