
import 'package:canditicketclient/Login/IniciarSesion.dart';
import 'package:canditicketclient/Perfil/EditarPerfil.dart';
import 'package:canditicketclient/Perfil/Idioma.dart';
import 'package:canditicketclient/Perfil/TerminoyCondiciones.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

import '../Explorar/Cashlees.dart';

class Perfil extends StatefulWidget {
  Perfil({Key? key}) : super(key: key);
  static final String routeName = 'Perfil';
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
              Icons.arrow_back_ios,
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
                    'Cuenta',
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
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      'assets/avatar3.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Leandro V',
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  Navigator.pushNamed(context, EditarPerfil.routeName);
                },
                child: Text(
                  'Ver perfil completo',
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
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cargas Cashlees',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {
                  Navigator.pushNamed(context, Cashlees.routeName);
                },
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Container(
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mis Mensajes',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              color: HexColor('F2F2F2'),
              thickness: 15,
              endIndent: 0,
              indent: 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    'Soporte',
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
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Centro de ayuda',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              height: 30,
              color: HexColor('F2F2F2'),
              thickness: 15,
              endIndent: 0,
              indent: 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    'Preferencias',
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
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Idioma',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {
                  Navigator.pushNamed(context, Idioma.routeName);
                },
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Container(
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Divisa',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Container(
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Unidades',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Container(
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Notificaciones',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              color: HexColor('F2F2F2'),
              thickness: 15,
              endIndent: 0,
              indent: 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    'Pago',
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
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Preferencia de pago',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              color: HexColor('F2F2F2'),
              thickness: 15,
              endIndent: 0,
              indent: 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    'Candi Tickets',
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
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Termino y Condiciones',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {
                  Navigator.pushNamed(context, TerminoCondiciones.routeName);
                },
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[200],
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            Container(
              height: 70,
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Politicas de Privacidad',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                onTap: () {
                  Navigator.pushNamed(context, TerminoCondiciones.routeName);
                },
              ),
            ),
            Divider(
              color: HexColor('F2F2F2'),
              thickness: 15,
              endIndent: 0,
              indent: 0,
            ),
            Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, IniciarSesion.routeName);
                  },
                  child: Text(
                    'Cerrar sesion',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 28, right: 28),
                      side: BorderSide(width: 2, color: Colors.black),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0))),
                )),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Center(
                child: Text(
                  'ID de usuario:2362732768423',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
