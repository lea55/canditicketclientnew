import 'dart:math';
import 'package:flutter/material.dart';

class TerminoCondiciones extends StatefulWidget {
  static final String routeName = 'TerminoCondiciones';
  @override
  _TerminoCondicionesState createState() => _TerminoCondicionesState();
}

class _TerminoCondicionesState extends State<TerminoCondiciones> {
  ScrollController _scrollController = new ScrollController();
  //
  static const _kBasePadding = 15.0;
  static const kExpandedHeight = 110.0;
  final ValueNotifier<double> _titlePaddingNotifier =
      ValueNotifier(_kBasePadding);

  double get _horizontalTitlePadding {
    const kCollapsedPadding = 40.0;

    if (_scrollController.hasClients) {
      return min(
          _kBasePadding + kCollapsedPadding,
          _kBasePadding +
              (kCollapsedPadding * _scrollController.offset) /
                  (kExpandedHeight - kToolbarHeight));
    }

    return _kBasePadding - 2;
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      _titlePaddingNotifier.value = _horizontalTitlePadding;
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
                elevation: 0.8,
                expandedHeight: kExpandedHeight,
                floating: false,
                pinned: true,
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
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    titlePadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 0),
                    title: ValueListenableBuilder(
                      valueListenable: _titlePaddingNotifier,
                      builder: (
                        context,
                        value,
                        child,
                      ) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: _horizontalTitlePadding),
                          child: Text(
                            "Termino y Condiciones",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        );
                      },
                    ),
                    background: Container(
                      color: Colors.white,
                    ))),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Column(
                children: [InfoTerminos()],
              )
            ]))
          ],
        ),
      ),
    );
  }
}

class InfoTerminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Introducci??n",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "El presente documento incluye las condiciones de uso del sitio electr??nico y los servicios. Ser?? necesario, adem??s, leer nuestras Pol??ticas de Privacidad, en donde detallamos nuestras pr??cticas de manejo de informaci??n. Dentro de los recuadros se incluye una breve explicaci??n de las Condiciones de uso, que de ninguna forma representan un contrato legal.",
                          style: TextStyle(
                              height: 1.8,
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Aceptacion de la condiciones",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "El Sitio es una comunidad virtual para creativos profesionales. Dentro de Jobiex podr??n compartir sus proyectos, contribuir y aprender en foros, conocer a otros artistas, tomar e impartir cursos, adem??s de encontrar empleo. En el Sitio tambi??n podr??n publicar im??genes, fotograf??as, archivos de audio y video, compartir promociones y aprovechar y comprar servicios si as?? lo desean (??Servicios??). Los Servicios incluyen, aunque no se limitan a, cualquier contenido o servicio disponible u ofrecido a trav??s de Jobiex, adem??s de cualquier oferta de materiales desplegados, transmitidos o desarrollados dentro del Sitio o mediante los Servicios. El Contenido (??Contenido??) incluye, aunque no se limita a ello, textos, comentarios de usuarios, mensajes, informaci??n, datos, gr??ficos, noticias, art??culos, fotograf??as, videos, sonidos, im??genes, ilustraciones y programas computacionales.",
                          style: TextStyle(
                              height: 1.8,
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Descripci??n de la App",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 60),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Debe leer, comprender y aceptar estas condiciones de uso (??Condiciones??) antes de ingresar a jobiex.org o cualquiera de sus enlaces (??el Sitio??). Al momento de ingresar al sitio queda sujeto a estas Condiciones, que, junto con nuestras Pol??ticas de Privacidad, rigen nuestra relaci??n con usted. Solo podr?? ingresar despu??s de haber le??do y aceptado las Condiciones.",
                          style: TextStyle(
                              height: 1.8,
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
