import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';

import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';

import 'package:vertical_landing_page/ui/views/rrss_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/location_view.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/audio_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Container(
              width: double.infinity,
              height: 90,
              color: Colors.black,
            ),
            Positioned(right: 20, top: 20, child: CustomAppMenu()),
            Positioned(
              top: 15,
              child: Container(
                  width: 150,
                  height: 60,
                  child: GestureDetector(
                    onTap: (() {
                      //Navigate to
                    }),
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Image(image: AssetImage('images/logo.png'))),
                  )),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xFF0A0A0A), Color(0xFF0A0A0A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
