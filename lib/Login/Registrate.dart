
import 'package:canditicketclient/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Registrate extends StatefulWidget {
  Registrate({Key? key}) : super(key: key);
  static final String routeName = 'Registrate';

  @override
  _RegistrateState createState() => _RegistrateState();
}

class _RegistrateState extends State<Registrate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Text(
                'Conviértete en miembro de Candi Tickets.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Circular',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 40,
              ),
              child: Row(
                children: [
                  Text(
                    'Nombre',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'DMSans'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 53,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                      cursorColor: Colors.grey[500],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                        hintText: 'Nombre',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: HexColor('E0E0E0'), width: 1.8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Apellido',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'DMSans'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 53,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                      cursorColor: Colors.grey[500],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                        hintText: 'Apellido',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: HexColor('E0E0E0'), width: 1.8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Dirección de correo electrónico',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'DMSans'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 53,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                      cursorColor: Colors.grey[500],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                        hintText: 'Dirección de correo electrónico',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: HexColor('E0E0E0'), width: 1.8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    'Contraseña',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'DMSans'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 53,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                      cursorColor: Colors.grey[500],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                            fontFamily: 'DMSans', fontWeight: FontWeight.w600),
                        hintText: 'Contraseña',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: HexColor('E0E0E0'), width: 1.8)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
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
                onPressed: () {
                  Navigator.pushNamed(context, Login.routeName);
                },
                child: Text(
                  'Registrate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 28, right: 28),
                      side: BorderSide(width: 2, color: Colors.black),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0))),
                )),
          ],
        ),
      ),
    );
  }
}
