
import 'package:canditicketclient/menu.dart';
import 'package:canditicketclient/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: Menu.routeName,
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.highContrastLight(secondary: Colors.white),
          canvasColor: Colors.transparent,
          textSelectionTheme: const TextSelectionThemeData(
              selectionColor: Colors.white,
              cursorColor: Colors.white,
              selectionHandleColor: Colors.white),
          disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
    );
  }
}
