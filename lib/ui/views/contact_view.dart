import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/shared/ovalo_title.dart';

import '../shared/boton_contact.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0A0A0A).withOpacity(0.1),
        backgroundBlendMode: BlendMode.darken,
        image: DecorationImage(
            opacity: 0.1,
            fit: BoxFit.cover,
            image: AssetImage('images/bg/bgsocialmedia.png')),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text('FOTOGRAFÍA',
                    style: TextStyle(
                        fontFamily: 'Insanibu',
                        fontSize: 45,
                        color: Colors.white)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  child: CarouselSlider(
                    items: [
                      Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('images/galerias/audio1.jpeg')),
                      Image(
                          fit: BoxFit.contain,
                          image: AssetImage('images/galerias/audio2.jpeg')),
                      Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('images/galerias/audio3.jpeg')),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.4,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: [
                    CardRrssPremium(
                      title: 'PRE-PRODUCCIÓN',
                      item1: '-Estrategia Digital',
                    ),
                    CardRrssPremium(
                      title: 'PRODUCCIÓN',
                      item1: '-Estrategia Digital',
                    ),
                    CardRrssPremium(
                      title: 'POST-PRODUCCIÓN',
                      item1: '-Estrategia Digital',
                    ),
                  ],
                  options: CarouselOptions(
                    height: 300,
                    enlargeCenterPage: true,
                    viewportFraction: 0.3,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardRrssPremium extends StatelessWidget {
  final String item1;
  final String title;

  const CardRrssPremium({
    required this.item1,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double screenData = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: Color.fromARGB(190, 0, 0, 0),
          borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: (screenData > 1080) ? 320 : 250,
      height: (screenData > 1080) ? 300 : 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            OvaloTitle(text: title),
            SizedBox(
              height: 30,
            ),
            ItemList(text: item1),
          ],
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final String text;
  const ItemList({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(text,
            textAlign: TextAlign.center,
            maxLines: 4,
            style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white)),
      ),
    );
  }
}
