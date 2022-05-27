
import 'package:canditicketclient/models/listaLugaresBusqueda.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Buscar extends StatefulWidget {
  static final String routeName = 'Buscar';
  Buscar({Key? key}) : super(key: key);

  @override
  _BuscarState createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 85.0,
            automaticallyImplyLeading: false,
            centerTitle: false,
            elevation: 0,
            pinned: true,
            floating: true,
            backgroundColor: Colors.white,
            title: Text(
              'Buscar',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Plain',
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, bottom: 20, top: 10),
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: HexColor('BEBFC2')),
                    borderRadius: BorderRadius.circular(70)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Iconsax.search_normal,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 15.5,
                            fontWeight: FontWeight.w200),
                        cursorColor: Colors.grey[500],
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 15.5,
                                fontWeight: FontWeight.w200),
                            hintText: 'Buscar proyecto',
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tus busquedas recientes',
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
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: CardHorizontalBusquedaRecientes()),
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
              ],
            ),
          )
        ],
      ),
    );
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
