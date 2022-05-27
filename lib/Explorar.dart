import 'dart:ui';


import 'package:canditicketclient/Explorar/InfoEvento.dart';
import 'package:canditicketclient/Explorar/Lugares.dart';
import 'package:canditicketclient/Notificaciones/Notificaciones.dart';
import 'package:canditicketclient/Perfil/perfil.dart';
import 'package:canditicketclient/models/ListLugares.dart';
import 'package:canditicketclient/models/ListaBares.dart';
import 'package:canditicketclient/models/ListaRankingProgramacion.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Explorar extends StatefulWidget {
  static final String routeName = 'Explorar';
  Explorar({Key? key}) : super(key: key);

  @override
  _ExplorarState createState() => _ExplorarState();
}

class _ExplorarState extends State<Explorar> {
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
            title: Row(
              children: [
                Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/canditicket.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Notificaciones.routeName);
                },
                icon: Icon(
                  Iconsax.notification,
                  color: Colors.black,
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Perfil.routeName);
                  },
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      'assets/avatar3.png',
                      width: 30,
                      height: 30,
                    ),
                  )),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20), child: CardHorizontal()),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vistos recientemente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardHorizontalBares(),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: CardHorizontalLugares()),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Explora eventos en estos lugares',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardLugares(),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vistos recientemente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardHorizontalBares(),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vistos recientemente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CardHorizontalBares(),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vistos recientemente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontFamily: 'DMSans',
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

class CardHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: List.generate(4, (index) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: 65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.black,
                    elevation: 1,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Iconsax.shop,
                                  size: 23,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  listaRankingProgramacion[index]
                                      ['establisment'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'DMSans',
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class CardHorizontalBares extends StatefulWidget {
  bool favorite = false;
  @override
  State<CardHorizontalBares> createState() => _CardHorizontalBaresState();
}

class _CardHorizontalBaresState extends State<CardHorizontalBares> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: List.generate(4, (index) {
            return Row(
              children: [
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 15),
                  height: 335,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    color: Colors.white,
                    elevation: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, InfoEvento.routeName);
                      },
                      borderRadius: BorderRadius.circular(0),
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  listaBares[index]['img'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0.0,
                                top: 10.0,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (widget.favorite) {
                                        widget.favorite = false;
                                      } else {
                                        widget.favorite = true;
                                      }
                                    });
                                  },
                                  color: Colors.white,
                                  textColor: Colors.white,
                                  child: Icon(
                                    !widget.favorite
                                        ? Iconsax.heart
                                        : Iconsax.heart5,
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  shape: CircleBorder(),
                                )),
                            Positioned(
                              right: 0.0,
                              left: 0.0,
                              bottom: 0.0,
                              child: Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: HexColor('ED5734'),
                                    borderRadius: BorderRadius.circular(0)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      listaBares[index]['dia'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      listaBares[index]['fecha'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(top: 2, bottom: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.38,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                color: HexColor('FCC740')),
                                            child: Center(
                                              child: Text(
                                                listaBares[index]['price'],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.5,
                                                    fontFamily: 'DMSans',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      listaBares[index]['evento'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'DMSans',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              listaBares[index]['organizador'],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'Plain',
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 3,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              listaBares[index]['ubicacion'],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'Plain',
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class CardHorizontalLugares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, LugaresPais.routeName);
      }),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: 200,
        decoration: BoxDecoration(
          color: HexColor('FCC740'),
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Text(
                'Descubre mas ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 29,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20),
              child: Text(
                'en formosa',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 29,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 48,
              width: MediaQuery.of(context).size.width * 0.45,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(50)),
                    side: BorderSide(
                      width: 2.0,
                      color: Colors.black,
                    )),
                onPressed: () {},
                child: Text(
                  'Sigue explorando',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardLugares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: List.generate(5, (index) {
            return Row(
              children: [
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 15),
                  height: 220,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    color: Colors.white,
                    elevation: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LugaresPais.routeName);
                      },
                      child: Stack(
                        children: [
                          Container(
                            child: Stack(children: [
                              Ink.image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  listaLugares[index]['img'],
                                ),
                              ),
                              Container(
                                color: Colors.black.withOpacity(0.35),
                              ),
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  listaLugares[index]['lugar'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
