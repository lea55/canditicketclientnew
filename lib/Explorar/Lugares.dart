
import 'package:canditicketclient/models/listaLugaresBusqueda.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class LugaresPais extends StatefulWidget {
  LugaresPais({Key? key}) : super(key: key);
  static final String routeName = 'LugaresPais';
  @override
  _LugaresPaisState createState() => _LugaresPaisState();
}

class _LugaresPaisState extends State<LugaresPais> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          floatingActionButton: Container(
            width: 140,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.candle_24,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Filtros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Iconsax.search_normal,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
                centerTitle: true,
                elevation: 0.5,
                pinned: true,
                floating: false,
                snap: false,
                excludeHeaderSemantics: true,
                backgroundColor: Colors.white,
                title: Text(
                  'Corrientes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: HexColor('909090'),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  indicatorWeight: 4,
                  isScrollable: true,
                  tabs: [
                    Tab(
                        child: Text(
                      'Conciertos',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Futbol',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Discotecas',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Boxeo',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Mas',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 15),
                            child: Row(
                              children: [
                                Text(
                                  'Conciertos',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Plain',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 20),
                            child: Text(
                              '4000 de mas de 4000 lugares para asistir ordenadas a un mejor precio. ',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.asset(
                                        'assets/cande.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 0.0,
                                      top: 10.0,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        textColor: Colors.white,
                                        child: Icon(
                                          Iconsax.heart,
                                          size: 20,
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
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Miercoles",
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
                                            "22-04-21 18:00",
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
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Lugar:',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Gran Park ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Organiza Jockey Club',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      width: MediaQuery.of(context).size.width *
                                          0.58,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Apresurate sola quedan 3 entradas',
                                          style: TextStyle(
                                            color: HexColor('ED5734'),
                                            fontSize: 13,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('FCC740'),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          margin: EdgeInsets.only(top: 10),
                                          height: 35,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A partir de \$5.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 30,
                            color: Colors.grey[300],
                            thickness: 1,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.asset(
                                        'assets/cande.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 0.0,
                                      top: 10.0,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        textColor: Colors.white,
                                        child: Icon(
                                          Iconsax.heart,
                                          size: 20,
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
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Miercoles",
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
                                            "22-04-21 18:00",
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
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Lugar:',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Gran Park ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Organiza Jockey Club',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      width: MediaQuery.of(context).size.width *
                                          0.65,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Apresurate sola quedan 3 entradas',
                                          style: TextStyle(
                                            color: HexColor('ED5734'),
                                            fontSize: 13,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('FCC740'),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          margin: EdgeInsets.only(top: 10),
                                          height: 35,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A partir de \$5.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 30,
                            color: Colors.grey[300],
                            thickness: 1,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.asset(
                                        'assets/cande.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 0.0,
                                      top: 10.0,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        textColor: Colors.white,
                                        child: Icon(
                                          Iconsax.heart,
                                          size: 20,
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
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Miercoles",
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
                                            "22-04-21 18:00",
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
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Lugar:',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Gran Park ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Organiza Jockey Club',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      width: MediaQuery.of(context).size.width *
                                          0.65,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Apresurate sola quedan 3 entradas',
                                          style: TextStyle(
                                            color: HexColor('ED5734'),
                                            fontSize: 13,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('FCC740'),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          margin: EdgeInsets.only(top: 10),
                                          height: 35,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A partir de \$5.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/cande.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Miercoles 22-04-21 18:00 ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Organiza Gran Rex',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 20,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: HexColor('FCC740'),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            'Orden:#2343245634',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/cande.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Miercoles 22-04-21 18:00 ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Organiza Gran Rex',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 20,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: HexColor('FCC740'),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            'Orden:#2343245634',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/cande.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Miercoles 22-04-21 18:00 ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Organiza Gran Rex',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 20,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: HexColor('FCC740'),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            'Orden:#2343245634',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            height: 170,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/portada.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Concierto de Cande Gariso Verano X Cordoba',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Miercoles 22-04-21 18:00 ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                        'Organiza Gran Rex',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 20,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: HexColor('FCC740'),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            'Orden:#2343245634',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class CardHorizontalBusquedaRecientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: List.generate(5, (index) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: 65,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: HexColor('BEBFC2')),
                        borderRadius: BorderRadius.circular(70)),
                    color: Colors.white,
                    elevation: 0,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            listaLugaresBusqueda[index]['lugar'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'DMSans',
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            listaLugaresBusqueda[index]['estado'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'DMSans',
                              fontSize: 13,
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
