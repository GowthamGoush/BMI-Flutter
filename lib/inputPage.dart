import 'package:bmi_flutter_app/roundedIconButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customTextStyle.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'constants.dart';

enum Gender {
  MALE,
  FEMALE,
  NONE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.NONE;

  int height = 180;
  int weight = 50;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kAppBarColor),
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style:
                GoogleFonts.dosis(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF21273E),
                Color(0xFF161828),
              ],
              stops: [
                0.0,
                1.0
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: selectedGender == Gender.MALE
                            ? kActiveCardColor
                            : kBaseCardColor,
                        childElement: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.MALE;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: selectedGender == Gender.FEMALE
                            ? kActiveCardColor
                            : kBaseCardColor,
                        childElement: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.FEMALE;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: ReusableCard(
                    color: kBaseCardColor,
                    childElement: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextStyle(
                          textLabel: 'HEIGHT',
                          fontSize: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            CustomTextStyle(
                              textLabel: height.toString(),
                              fontColor: 0xFFFFFFFF,
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2.5,
                            ),
                            CustomTextStyle(
                              textLabel: 'cm',
                              fontSize: 18,
                              letterSpacing: 2.5,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 16.0,
                                  pressedElevation: 12.0),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 32.0)),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    onPress: () {},
                  )),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          color: kBaseCardColor,
                          childElement: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextStyle(
                                textLabel: 'WEIGHT',
                                fontSize: 18,
                              ),
                              CustomTextStyle(
                                textLabel: weight.toString(),
                                fontColor: 0xFFFFFFFF,
                                fontSize: 48,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2.5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                      buttonFunction: () {
                                        setState(() {
                                          if (weight > 10) weight--;
                                        });
                                      },
                                      buttonIcon: FontAwesomeIcons.minus),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  RoundIconButton(
                                      buttonFunction: () {
                                        setState(() {
                                          if (weight < 200) weight++;
                                        });
                                      },
                                      buttonIcon: FontAwesomeIcons.plus)
                                ],
                              )
                            ],
                          ),
                          onPress: () {}),
                    ),
                    Expanded(
                      child: ReusableCard(
                          color: kBaseCardColor,
                          childElement: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextStyle(
                                textLabel: 'AGE',
                                fontSize: 18,
                              ),
                              CustomTextStyle(
                                textLabel: age.toString(),
                                fontColor: 0xFFFFFFFF,
                                fontSize: 48,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2.5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                      buttonFunction: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      buttonIcon: FontAwesomeIcons.minus),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  RoundIconButton(
                                      buttonFunction: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      buttonIcon: FontAwesomeIcons.plus)
                                ],
                              )
                            ],
                          ),
                          onPress: () {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
