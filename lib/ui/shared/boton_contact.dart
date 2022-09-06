import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonContact extends StatelessWidget {
  final String text;
  const BotonContact({required this.text});

  @override
  Widget build(BuildContext context) {
    double screenData = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFDD291F),
          ),
          width: 200,
          height: 44,
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
