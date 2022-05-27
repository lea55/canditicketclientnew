import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class EditarPerfil extends StatefulWidget {
  static final String routeName = 'EditarPerfil';
  @override
  _EditarPerfilState createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            elevation: 0.5,
            pinned: false,
            floating: true,
            centerTitle: true,
            excludeHeaderSemantics: true,
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
            actions: [
              TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {},
                child: Text(
                  'Guardar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.5,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: Stack(children: [
                    Image.asset(
                      'assets/cliente.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topLeft,
                      repeat: ImageRepeat.noRepeat,
                    ),
                    Positioned(
                      right: 15.0,
                      bottom: 15.0,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.camera4,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 35, bottom: 20),
                  child: Row(
                    children: [
                      Text(
                        'Información personal',
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
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Nombre',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: TextFormField(
                      cursorWidth: 0.5,
                      cursorColor: Colors.black,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: 'Nombre',
                        labelStyle: TextStyle(
                            color: HexColor('757575'),
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.5),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: HexColor('757575'), width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: HexColor('FA503F'), width: 1.5)),
                        hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'DMSans',
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Apellido',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: TextFormField(
                      cursorWidth: 0.5,
                      cursorColor: Colors.black,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: 'Apellido',
                        labelStyle: TextStyle(
                            color: HexColor('757575'),
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.5),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: HexColor('757575'), width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: HexColor('FA503F'), width: 1.5)),
                        hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'DMSans',
                            fontSize: 15.5,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
