import 'package:bmi_flutter_app/inputPage.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
        primaryColor: Color(kPrimaryColor),
        scaffoldBackgroundColor: Color(kScaffoldBackgroundColor)),
    home: InputPage(),
  ));
}
