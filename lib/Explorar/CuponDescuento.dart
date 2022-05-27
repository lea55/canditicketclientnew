
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class CuponDescuento extends StatefulWidget {
  CuponDescuento({Key? key}) : super(key: key);
  static final String routeName = 'CuponDescuento';

  @override
  _CuponDescuentoState createState() => _CuponDescuentoState();
}

class _CuponDescuentoState extends State<CuponDescuento> {
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
              child: Row(
                children: [
                  Text(
                    'Cupón de descuento',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Circular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            buildDescuento()
          ],
        ),
      ),
    );
  }
}

Widget buildDescuento() => Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 0, top: 20),
            height: 58,
            child: TextField(
              style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 15.5,
                  fontWeight: FontWeight.w600),
              cursorColor: Colors.grey[500],
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 15.5,
                    fontWeight: FontWeight.w600),
                hintText: 'Cupón de descuento',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: HexColor('E0E0E0'), width: 1.8)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 1.8)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            width: double.infinity,
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
                'Aplicar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
