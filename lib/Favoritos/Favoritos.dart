import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Favoritos extends StatefulWidget {
  Favoritos({Key? key}) : super(key: key);
  static final String routeName = 'Favoritos';
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                toolbarHeight: 85.0,
                backgroundColor: Colors.white,
                title: Text(
                  'Favoritos',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Plain',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: 0,
                pinned: true,
                floating: true,
                bottom: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: HexColor('909090'),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  indicatorWeight: 4,
                  isScrollable: false,
                  tabs: [
                    Tab(
                        child: Text(
                      'Eventos',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Organizaciones',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 150,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/cande.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -10,
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
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Text(
                                  'Concierto de Cande Gariso Verano X Cordoba',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                width: MediaQuery.of(context).size.width * 0.50,
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
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      'A partir de 5000',
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
                    ListTile(
                      title: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  child: Text(
                                    'Complejo Jockey Club',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
