import 'package:bmi_flutter_app/inputPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2E3551),
        scaffoldBackgroundColor: Color(0xFF21273E)),
    home: InputPage(),
  ));
}
