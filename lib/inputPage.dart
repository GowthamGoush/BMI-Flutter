import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    childElement: Container(),
                    onPress: () {},
                  )),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          color: kBaseCardColor,
                          childElement: Container(),
                          onPress: () {}),
                    ),
                    Expanded(
                      child: ReusableCard(
                          color: kBaseCardColor,
                          childElement: Container(),
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
