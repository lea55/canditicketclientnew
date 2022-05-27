
import 'package:canditicketclient/Buscar/Buscar.dart';
import 'package:canditicketclient/Explorar.dart';
import 'package:canditicketclient/Favoritos/Favoritos.dart';
import 'package:canditicketclient/Tickets/Tickets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Menu extends StatefulWidget {
  static const String routeName = 'MenuPrincipal';
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchScreen(_currentIndex),
      bottomNavigationBar: Stack(children: [
        Divider(
          height: 4,
          thickness: 4.5,
          color: Colors.grey[200],
        ),
        BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 2,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: HexColor('757575'),
          unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w100,
              fontFamily: 'DMSans'),
          selectedItemColor: HexColor('ED5734'),
          selectedLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: 'DMSans'),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: 'Explorar',
            ),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal), label: 'Buscar'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.heart), label: 'Favoritos'),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.ticket_star),
              label: 'Tickets',
            ),
          ],
        ),
      ]),
    );
  }

  switchScreen(int currentIndex) {
    switch (_currentIndex) {
      case 0:
        return Explorar();
      case 1:
        return Buscar();
      case 2:
        return Favoritos();
      case 3:
        return Tickets();
    }
  }
}
