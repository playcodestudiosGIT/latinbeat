import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/shared/boton_contact.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenData = MediaQuery.of(context).size.width;
    return (screenData > 1100)
        ? Home1400(screenData: screenData)
        : HomeMobile(screenData: screenData);
  }
}

class Home1400 extends StatelessWidget {
  const Home1400({
    Key? key,
    required this.screenData,
  }) : super(key: key);

  final double screenData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: Color(0xFF0A0A0A),
          image: DecorationImage(
            image: AssetImage('images/bg/bghome.png'),
            opacity: 0.05,
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: (screenData > 1350) ? 200 : 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('HACEMOS REALIDAD',
                          style: GoogleFonts.montserrat(
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Text('TUS IDEAS',
                          style: TextStyle(
                              fontFamily: 'Insanibu',
                              fontSize: 120,
                              color: Colors.white)),
                      Text('Agencia de marketing, publicidady redes sociales',
                          style: GoogleFonts.montserrat(
                              fontSize: 18, color: Colors.white)),
                      Text('Haz de tu idea un impulso para tu marca',
                          style: GoogleFonts.montserrat(
                              fontSize: 18, color: Colors.white)),
                      SizedBox(height: 60),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: BotonContact(text: 'CONTÁCTANOS'))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: (screenData > 1350) ? 200 : 100),
                  child: Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/logocolor.png'))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    Key? key,
    required this.screenData,
  }) : super(key: key);

  final double screenData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Color(0xFF0A0A0A),
        image: DecorationImage(
          image: AssetImage('images/bg/bghome.png'),
          opacity: 0.05,
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/logocolor.png'))),
          ),
          SizedBox(height: (screenData < 560) ? 30 : 60),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('HACEMOS REALIDAD',
                  style: GoogleFonts.montserrat(
                      fontSize: (screenData < 560) ? 30 : 50,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text('TUS IDEAS',
                  style: TextStyle(
                      fontFamily: 'Insanibu',
                      fontSize: (screenData < 560) ? 80 : 120,
                      color: Colors.white)),
              Text('Agencia de marketing, publicidady redes sociales',
                  style: GoogleFonts.montserrat(
                      fontSize: (screenData < 560) ? 14 : 18,
                      color: Colors.white)),
              Text('Haz de tu idea un impulso para tu marca',
                  style: GoogleFonts.montserrat(
                      fontSize: (screenData < 560) ? 14 : 18,
                      color: Colors.white)),
              SizedBox(height: 60),
              MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: BotonContact(text: 'CONTÁCTANOS'))
            ],
          ),
        ],
      ),
    );
  }
}
