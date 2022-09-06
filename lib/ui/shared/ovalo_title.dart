import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OvaloTitle extends StatelessWidget {
  final String text;
  const OvaloTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    double screenData = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(50, 221, 40, 31),
        ),
        width: (screenData < 1080) ? 150 : 260,
        height: 44,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
