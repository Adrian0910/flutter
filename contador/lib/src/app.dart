import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_pages.dart';
//import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // el bloque de lego

  @override //sobreescribe el método build que tenga el widget
  Widget build(context) {
    // Dibuja el "bloque de lego", el context tiene la informacion del arbol de widgets

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePages(),
        child: ContadorPage(),
      ),
    );
  }
}
