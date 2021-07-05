import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orbitFit1/screens/BMI/components/reusablecard.dart';
import 'package:orbitFit1/screens/BMI/components/iconcontent.dart';
import 'package:orbitFit1/screens/BMI/components/roundiconbutton.dart';
import 'package:orbitFit1/screens/BMI/components/bottombutton.dart';
import 'package:orbitFit1/screens/BMI/utils/calculatebmi.dart';
import 'package:orbitFit1/screens/BMI/resultspage.dart';

//const kInactiveCardColour = Color(0xFF111328);
enum Gender {
  male,
  female,
}
int gotcha = 0;

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Gender selectGender;
  int height = 140;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    color: selectGender == Gender.male
                        ? Color(0xFF1D1E33)
                        : Colors.black,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    color: selectGender == Gender.female
                        ? Color(0xFF1D1E33)
                        : Colors.black,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 450,
            child: ReusableCard(
              color: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFF455A64),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            color: Color(0xFF1D1E33),
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                        icon: FontAwesomeIcons.minus,
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        }),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            color: Color(0xFF1D1E33),
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            age--;
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    RoundIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        })
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              BmiLogic calc = BmiLogic(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//const kBottomContainerHeight = 80.0;

// const kActiveCardColour = Color(0xFF1D1E33);
// const kInactiveCardColour = Color(0xFF111328);
// const kBottomContainerColour = Color(0xFFEB1555);

// const kLabelTextStyle = TextStyle(
//   fontSize: 18.0,
//   color: Color(0xFF8D8E98),
// );

// const kNumberTextStyle = TextStyle(
//   fontSize: 50.0,
//   fontWeight: FontWeight.w900,
// );

// const kLargeButtonTextStyle = TextStyle(
//   fontSize: 25.0,
//   fontWeight: FontWeight.bold,
// );

// const kTitleTextStyle = TextStyle(
//   fontSize: 50.0,
//   fontWeight: FontWeight.bold,
// );

// const kResultTextStyle = TextStyle(
//   color: Color(0xFF24D876),
//   fontSize: 22.0,
//   fontWeight: FontWeight.bold,
// );

// const kBMITextStyle = TextStyle(
//   fontSize: 100.0,
//   fontWeight: FontWeight.bold,
// );

// const kBodyTextStyle = TextStyle(
//   fontSize: 22.0,
// );
