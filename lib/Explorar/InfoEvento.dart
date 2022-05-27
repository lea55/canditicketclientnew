import 'dart:ui';


import 'package:canditicketclient/Explorar.dart';
import 'package:canditicketclient/Explorar/Entradas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_indicators.dart';
import 'package:flutter_carousel_widget/flutter_carousel_options.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

final List<String> imgList = [
  'assets/cande.jpg',
  'assets/portada.jpg',
  'assets/tiesto.jpg',
  'assets/nicky.jpg',
  'assets/nicole.jpg',
];

class InfoEvento extends StatefulWidget {
  bool favorite = false;
  static final String routeName = 'InfoEvento';
  InfoEvento({Key? key}) : super(key: key);

  @override
  _InfoEventoState createState() => _InfoEventoState();
}

class _InfoEventoState extends State<InfoEvento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            elevation: 0,
            pinned: false,
            floating: true,
            excludeHeaderSemantics: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Iconsax.export,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (widget.favorite) {
                      widget.favorite = false;
                    } else {
                      widget.favorite = true;
                    }
                  });
                },
                icon: Icon(
                  !widget.favorite ? Iconsax.heart : Iconsax.heart5,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: FullscreenSliderDemo()),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 25, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Concierto de Ozuna verano X',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Circular',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Dirección',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Mrcal. Lopez Avidores de Chaco 2323',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Fecha',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Miercoles 22-04-21 18:00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Organizador Jockey Club',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey[300],
                  thickness: 0.8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: [
                          Text(
                            'Consegui tus entradas',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 10),
                      child: Row(
                        children: [
                          Text(
                            'Desde \$2.000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 18),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: HexColor('FCC740'),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Entradas.routeName);
                      },
                      child: Text(
                        'Ver entradas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.5,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 25, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Acerca de',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Circular',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Text(
                    'Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.Evento para recaudar fondos para ayudar a las asociones. Evento para recaudar fondos para ayudar a las asociones.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 0, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Ubicación',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Circular',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardUbicacion(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Otros eventos',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Circular',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardHorizontalBares()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardUbicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Card(
          color: Colors.white,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Column(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 220,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/mapa.png',
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Icon(
                      Iconsax.location,
                      color: Colors.white,
                    ),
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mcal. Estigarribia y Avda.Avidores del Chaco 3454',
                        style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'DMSans',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Formosa,Argentina',
                        style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'DMSans',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FullscreenSliderDemo extends StatelessWidget {
  const FullscreenSliderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final double height = 300;
        return FlutterCarousel(
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,

            enlargeCenterPage: false,
            showIndicator: true,
            autoPlay: false,
            slideIndicator: CircularWaveSlideIndicator(
                indicatorRadius: 4.0, itemSpacing: 13),
            // autoPlay: false,
          ),
          items: imgList
              .map((item) => Center(
                      child: Image.asset(
                    item,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: height,
                  )))
              .toList(),
        );
      },
    );
  }
}
