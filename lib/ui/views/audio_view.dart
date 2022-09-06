import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/boton_contact.dart';

class PricingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF0A0A0A),
            image: DecorationImage(
                opacity: 0.1,
                image: AssetImage('images/bg/bgaudio.png'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text('AUDIO',
                      style: TextStyle(
                          fontFamily: 'Insanibu',
                          fontSize: 45,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                        // color: Colors.white.withOpacity(0.02),
                        width: double.infinity,
                        child: CarouselSlider(
                          items: [
                            Image(
                                fit: BoxFit.fitHeight,
                                image:
                                    AssetImage('images/galerias/audio1.jpeg')),
                            Image(
                                fit: BoxFit.fitHeight,
                                image:
                                    AssetImage('images/galerias/audio2.jpeg')),
                            Image(
                                fit: BoxFit.fitHeight,
                                image:
                                    AssetImage('images/galerias/audio3.jpeg')),
                          ],
                          options: CarouselOptions(
                            pageSnapping: false,
                            height: 500,
                            aspectRatio: 21 / 9,
                            viewportFraction: 0.5,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        )),
                    SizedBox(
                      height: 60,
                    ),
                    Wrap(
                      children: [
                        Container(
                          // color: Colors.white.withOpacity(0.02),
                          width: double.infinity,
                          height: 60,
                          child: CarouselSlider(
                            items: [
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                              AudioItem(
                                  icon: Icons.abc_outlined, text: 'JINGLES'),
                            ],
                            options: CarouselOptions(viewportFraction: 0.2),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BotonContact(
                      text: 'CONTÁCTANOS',
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AudioItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const AudioItem({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromARGB(190, 0, 0, 0),
          ),
          width: 200,
          height: 40,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.red,
                ),
                height: 40,
                width: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Text(text,
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
