import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.buttonFunction, required this.buttonIcon});

  final Function() buttonFunction;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonFunction,
      child: Icon(buttonIcon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
      elevation: 2.0,
    );
  }
}
