import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0A0A0A).withOpacity(0.1),
        backgroundBlendMode: BlendMode.darken,
        image: DecorationImage(
            opacity: 0.1,
            fit: BoxFit.cover,
            image: AssetImage('images/bg/bgvideo.png')),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'VIDEO',
            style: GoogleFonts.montserratAlternates(
                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
