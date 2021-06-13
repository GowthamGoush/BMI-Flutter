import 'package:bmi_flutter_app/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'customTextStyle.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.bmiResult,
      required this.bmiInterpretation});

  final String bmi;
  final String bmiResult;
  final String bmiInterpretation;

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
      body: Padding(
        padding: EdgeInsets.only(top: 18.0, left: 4.0, right: 4.0),
        child: Container(
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
          child: Column(
            children: [
              Center(
                child: CustomTextStyle(
                  textLabel: 'YOUR RESULT',
                  fontColor: 0xFFFFFFFF,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.5,
                ),
              ),
              Expanded(
                flex: 11,
                child: ReusableCard(
                    color: kBaseCardColor,
                    childElement: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          bmiResult,
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmi,
                          style: kBMITextStyle,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            bmiInterpretation,
                            style: kBodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                    onPress: () {}),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    color: Color(kBottomContainerColor),
                    child: Center(
                      child: CustomTextStyle(
                        textLabel: 'RE-CALCULATE',
                        fontColor: kDefaultFontColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 3.5,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
