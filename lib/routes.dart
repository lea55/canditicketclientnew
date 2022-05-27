
import 'package:canditicketclient/Buscar/Buscar.dart';
import 'package:canditicketclient/Buscar/CrearEntradas.dart';
import 'package:canditicketclient/Escanear/Escanear.dart';
import 'package:canditicketclient/Explorar.dart';
import 'package:canditicketclient/Explorar/Cashlees.dart';
import 'package:canditicketclient/Explorar/CuponDescuento.dart';
import 'package:canditicketclient/Explorar/Entradas.dart';
import 'package:canditicketclient/Explorar/InfoEvento.dart';
import 'package:canditicketclient/Explorar/Lugares.dart';
import 'package:canditicketclient/Favoritos/Favoritos.dart';
import 'package:canditicketclient/Login/IniciarSesion.dart';
import 'package:canditicketclient/Login/Login.dart';
import 'package:canditicketclient/Login/Registrate.dart';
import 'package:canditicketclient/Mapa.dart';
import 'package:canditicketclient/Notificaciones/Notificaciones.dart';
import 'package:canditicketclient/Perfil/EditarPerfil.dart';
import 'package:canditicketclient/Perfil/Idioma.dart';
import 'package:canditicketclient/Perfil/TerminoyCondiciones.dart';
import 'package:canditicketclient/Perfil/perfil.dart';
import 'package:canditicketclient/Tickets/Tickets.dart';
import 'package:canditicketclient/menu.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  Idioma.routeName: (BuildContext context) => Idioma(),
  CuponDescuento.routeName: (BuildContext context) => CuponDescuento(),
  Cashlees.routeName: (BuildContext context) => Cashlees(),
  Entradas.routeName: (BuildContext context) => Entradas(),
  IniciarSesion.routeName: (BuildContext context) => IniciarSesion(),
  TerminoCondiciones.routeName: (BuildContext context) => TerminoCondiciones(),
  Registrate.routeName: (BuildContext context) => Registrate(),
  InfoEvento.routeName: (BuildContext context) => InfoEvento(),
  Login.routeName: (BuildContext context) => Login(),
  Perfil.routeName: (BuildContext context) => Perfil(),
  Explorar.routeName: (BuildContext context) => Explorar(),
  Escanear.routeName: (BuildContext context) => Escanear(),
  Buscar.routeName: (BuildContext context) => Buscar(),
  Menu.routeName: (BuildContext context) => Menu(),
  Mapa.routeName: (BuildContext context) => Mapa(),
  LugaresPais.routeName: (BuildContext context) => LugaresPais(),
  Favoritos.routeName: (BuildContext context) => Favoritos(),
  Tickets.routeName: (BuildContext context) => Tickets(),
  Notificaciones.routeName: (BuildContext context) => Notificaciones(),
  EntradaAsientos.routeName: (BuildContext context) => EntradaAsientos(),
  EditarPerfil.routeName: (BuildContext context) => EditarPerfil()
};
