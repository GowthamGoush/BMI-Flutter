import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.color, required this.childElement, required this.onPress});

  final int color;
  final Widget childElement;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childElement,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
