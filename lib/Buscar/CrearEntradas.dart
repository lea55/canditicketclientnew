import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class EntradaAsientos extends StatefulWidget {
  static final String routeName = 'EntradaAsientos';
  const EntradaAsientos({Key? key}) : super(key: key);

  @override
  State<EntradaAsientos> createState() => _EntradaAsientosState();
}

class _EntradaAsientosState extends State<EntradaAsientos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            'Nueva Entrada',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.5,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0.8,
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Iconsax.back_square,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 25,
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Nombre de la empresa',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'DMSans'),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Container(
                    height: 38,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorWidth: 0.5,
                            cursorColor: Colors.black,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              hintText: 'Nombre y Apellido',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.5),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: HexColor('383838'), width: 1)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: HexColor('ED5734'), width: 1.5)),
                              hintStyle: TextStyle(
                                  color: HexColor('B5B5B5'),
                                  fontFamily: 'DMSans',
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
