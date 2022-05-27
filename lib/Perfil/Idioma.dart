
import 'package:canditicketclient/models/ListaIdiomas.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:iconsax/iconsax.dart';

class Idioma extends StatefulWidget {
  static final String routeName = 'Idioma';
  const Idioma({Key? key}) : super(key: key);

  @override
  _IdiomaState createState() => _IdiomaState();
}

class _IdiomaState extends State<Idioma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            'Idioma',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.5,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0.8,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 25,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [Listaidiomas()],
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class Listaidiomas extends StatefulWidget {
  @override
  State<Listaidiomas> createState() => _ListaidiomasState();
}

class _ListaidiomasState extends State<Listaidiomas> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: List.generate(3, (index) {
              return Column(
                children: [
                  Container(
                    height: 75,
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Radio<SingingCharacter>(
                        activeColor: Colors.black,
                        focusColor: Colors.black,
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      title: Text(
                        listaIdiomas[index]['name'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        listaIdiomas[index]['sub'],
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.grey[200],
                    endIndent: 20,
                    indent: 20,
                  ),
                ],
              );
            }),
          ),
        ));
  }
}
