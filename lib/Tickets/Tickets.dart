import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Tickets extends StatefulWidget {
  Tickets({Key? key}) : super(key: key);
  static final String routeName = 'Tickets';
  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
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
                  'Tus tickets',
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
                      'Proximos',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Pasadas',
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
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
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
        backgroundColor: Colors.white,
      ),
    );
  }
}
