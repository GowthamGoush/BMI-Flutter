import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          label,
          style: GoogleFonts.balooTammudu(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
            letterSpacing: 3.5,
          ),
        )
      ],
    );
  }
}
