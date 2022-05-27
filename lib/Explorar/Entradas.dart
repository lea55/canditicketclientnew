
import 'package:canditicketclient/Explorar/CuponDescuento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Entradas extends StatefulWidget {
  Entradas({Key? key}) : super(key: key);
  static final String routeName = 'Entradas';
  @override
  _EntradasState createState() => _EntradasState();
}

class _EntradasState extends State<Entradas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                color: Colors.white,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                        top: 15,
                        right: 10,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: FittedBox(
                              child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          )),
                        )),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Ver Carrito',
                            style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.chevron_compact_down,
                              size: 11, color: Colors.black)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '\$137,02',
                            style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          SizedBox(width: 20),
                          _getButtonBuy(),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.5,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Concierto de Nicky Jam Verano',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Miercoles 22-04-21 18:00 ',
                      style: TextStyle(
                        color: HexColor('757575'),
                        fontSize: 13,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ]),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 65,
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduce código promocional',
                        style: TextStyle(
                          decorationThickness: 1,
                          color: HexColor('ED5734'),
                          fontSize: 15,
                          fontFamily: 'Plain',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, CuponDescuento.routeName);
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Entradas',
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
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  'Entrada SuperVip',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                    left: 20, right: 0, top: 10),
                                child: Text(
                                  'Las ventas finalizan en 5 horas Suport the joga community and our social justice work',
                                  style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 20, right: 5, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '15,00 \$',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      ' + 2,55 \$ Tarifa',
                                      style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300,
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
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.remove),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                child: Icon(Icons.add),
                                onPressed: () {},
                                constraints: BoxConstraints.tightFor(
                                  width: 45.0,
                                  height: 45.0,
                                ),
                                shape: CircleBorder(),
                                fillColor: HexColor('F2F2F2'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getButtonTextCarrito() {
  return Container(
    height: double.infinity,
    color: Colors.white,
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
            top: 15,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(2),
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: FittedBox(
                  child: Text(
                '3',
                style: TextStyle(color: Colors.white),
              )),
            )),
        CupertinoButton(
          padding: EdgeInsets.zero,
          minSize: 0,
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'Ver Carrito',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
              SizedBox(width: 5),
              Icon(CupertinoIcons.chevron_compact_down,
                  size: 11, color: Colors.black)
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _getButtonBuy() {
  return CupertinoButton(
    minSize: 0,
    padding: EdgeInsets.zero,
    onPressed: () {},
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: HexColor('FCC740'),
        borderRadius: BorderRadius.circular(50),
      ),
      child: FittedBox(
        child: Text(
          'Comprar',
          style: TextStyle(
            fontFamily: 'DMSans',
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
