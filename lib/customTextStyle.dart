import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class CustomTextStyle extends StatelessWidget {
  CustomTextStyle(
      {required this.textLabel,
      required this.fontSize,
      this.fontColor = kFontColor,
      this.fontWeight = FontWeight.normal,
      this.letterSpacing = 3.5});

  final String textLabel;
  final double fontSize;
  final double letterSpacing;
  final int fontColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      textLabel,
      style: TextStyle(
        color: Color(fontColor),
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
