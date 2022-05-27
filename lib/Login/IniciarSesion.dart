
import 'package:canditicketclient/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class IniciarSesion extends StatefulWidget {
  IniciarSesion({Key? key}) : super(key: key);
  static final String routeName = 'IniciarSesion';

  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
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
              Icons.close,
              size: 20,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 72,
                    width: 78,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/logincandi.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Text(
                'Accede a  los mejores eventos solo en Candi Tickets.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Plain',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text(
                'Al continuar, confirmas tu confirmidad con nuestras Condiciones de Uso y confirmas que leiste nuestra Politicas de Privacidad.',
                style: TextStyle(
                  color: HexColor('757575'),
                  fontSize: 12,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/logogoogle.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          'Continuar con Google',
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
            Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                ),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/facebook.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          'Continuar con Facebook',
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
            Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          'Continuar con el correo electrónico',
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
