
import 'package:canditicketclient/models/ListaRankingProgramacion.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';


class Escanear extends StatefulWidget {
  static final String routeName = 'Escanear';
  Escanear({Key? key}) : super(key: key);

  @override
  _EscanearState createState() => _EscanearState();
}

class _EscanearState extends State<Escanear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor('F1B203')),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  'assets/logocanditicket.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Explorar',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardHorizontal()
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
        ),
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
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: List.generate(4, (index) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    color: Colors.white,
                    elevation: 1,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Iconsax.pet,
                                  size: 23,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  listaRankingProgramacion[index]
                                      ['establisment'],
                                  style: TextStyle(
                                    color: Colors.black,
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
