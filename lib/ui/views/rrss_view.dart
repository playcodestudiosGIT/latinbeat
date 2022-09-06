import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/shared/boton_contact.dart';
import '../shared/ovalo_title.dart';

class AboutView extends StatelessWidget {
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
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('REDES SOCIALES',
                    style: TextStyle(
                        fontFamily: 'Insanibu',
                        fontSize: 45,
                        color: Colors.white)),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  items: [
                    CardRrssEconomico(
                      item1: '-Estrategia Digital',
                      item2: '-Diseño de 15 post e Historias',
                      item3: '-Asesoría de pautas en\nFacebook Ads',
                      item4: '-Análisis de Resultados',
                    ),
                    CardRrssStandard(
                      item1:
                          '-Diseño de 25 post e historias\n(Diseño y Fotografía).',
                      item2:
                          '-Sesión fotográfica profesional\n(25 fotos retocadas).',
                      item3: '-2 Reels o animaciones',
                      item4:
                          '-Asesoría o servicios de creación y \n segmentación de campaña en Facebook Ads \n(5 campañas mensuales)',
                      item5: '-Análisis de resultados.',
                    ),
                    CardRrssPremium(
                      item1: '-Estrategia Digital',
                      item2:
                          '-Diseño de 35 post e Historias\n(diseño y fotografìas)',
                      item3: '-Fotografía profesional\n(40 fotos retocadas).',
                      item4: '-3 Reels o Animaciones.',
                      item5: '-1 vídeo de 30 segundos.',
                      item6:
                          '-Servicio de creación y segmentación de campaña\nen Facebook Ads (5-10 campañas mensuales).',
                      item7: '-Análisis de resultados.',
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500,
                    enlargeCenterPage: true,
                    viewportFraction: 0.3,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                  ),
                )
              ],
            )),
          ),
          SizedBox(
            height: 30,
          ),
          BotonContact(text: 'CONTÁCTANOS')
        ],
      ),
    );
  }
}

class CardRrssEconomico extends StatelessWidget {
  final String item1;
  final String item2;
  final String item3;
  final String item4;
  const CardRrssEconomico({
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
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
      height: (screenData > 1080) ? 500 : 350,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          OvaloTitle(text: 'ECONÓMICO'),
          SizedBox(
            height: 30,
          ),
          ItemList(text: item1),
          ItemList(text: item2),
          ItemList(text: item3),
          ItemList(text: item4),
        ],
      ),
    );
  }
}

class CardRrssStandard extends StatelessWidget {
  final String item1;
  final String item2;
  final String item3;
  final String item4;
  final String item5;
  const CardRrssStandard({
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
  });

  @override
  Widget build(BuildContext context) {
    double screenData = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: Color.fromARGB(190, 0, 0, 0),
          borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: (screenData > 1080) ? 320 : 250,
      height: (screenData > 1080) ? 500 : 450,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          OvaloTitle(text: 'STANDARD'),
          SizedBox(
            height: 30,
          ),
          ItemList(text: item1),
          ItemList(text: item2),
          ItemList(text: item3),
          ItemList(text: item4),
          ItemList(text: item5),
        ],
      ),
    );
  }
}

class CardRrssPremium extends StatelessWidget {
  final String item1;
  final String item2;
  final String item3;
  final String item4;
  final String item5;
  final String item6;
  final String item7;
  const CardRrssPremium({
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
    required this.item6,
    required this.item7,
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
      height: (screenData > 1080) ? 500 : 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            OvaloTitle(text: 'PREMIUM'),
            SizedBox(
              height: 30,
            ),
            ItemList(text: item1),
            ItemList(text: item2),
            ItemList(text: item3),
            ItemList(text: item4),
            ItemList(text: item5),
            ItemList(text: item6),
            ItemList(text: item7),
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
