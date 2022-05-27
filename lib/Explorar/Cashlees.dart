import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Cashlees extends StatefulWidget {
  Cashlees({Key? key}) : super(key: key);
  static final String routeName = 'Cashlees';

  @override
  _CashleesState createState() => _CashleesState();
}

class _CashleesState extends State<Cashlees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.16,
          height: 58,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              primary: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Cashlees',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Plain',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              width: MediaQuery.of(context).size.width,
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
                child: Text(
                  'Retiros',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Pulseras',
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
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: HexColor('F1F1F2'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                elevation: 0,
                child: InkWell(
                    onTap: () {},
                    child: Row(children: [
                      Container(
                        color: HexColor('ED5734'),
                        width: 10,
                        height: 100,
                      ),
                      Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/pulsera.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 14,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                  color: HexColor('FCC740'),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                margin: EdgeInsets.only(left: 3, right: 3),
                                child: Center(
                                  child: Text(
                                    'Cod#23424422GFHLDL',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Saldo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$1.500',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: HexColor('F1F1F2'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                elevation: 0,
                child: InkWell(
                    onTap: () {},
                    child: Row(children: [
                      Container(
                        color: HexColor('ED5734'),
                        width: 10,
                        height: 100,
                      ),
                      Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/pulsera.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 14,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                  color: HexColor('FCC740'),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                margin: EdgeInsets.only(left: 3, right: 3),
                                child: Center(
                                  child: Text(
                                    'Cod#23424422GFHLDL',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Saldo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$1.500',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: HexColor('F1F1F2'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                elevation: 0,
                child: InkWell(
                    onTap: () {},
                    child: Row(children: [
                      Container(
                        color: HexColor('ED5734'),
                        width: 10,
                        height: 100,
                      ),
                      Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/pulsera.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 14,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                  color: HexColor('FCC740'),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                margin: EdgeInsets.only(left: 3, right: 3),
                                child: Center(
                                  child: Text(
                                    'Cod#23424422GFHLDL',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Saldo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$1.500',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
