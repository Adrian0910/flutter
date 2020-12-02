import 'package:contador/src/pages/home_page.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // el bloque de lego

  @override //sobreescribe el método build que tenga el widget
  Widget build(context) {
    // Dibuja el "bloque de lego", el context tiene la informacion del arbol de widgets

    return MaterialApp(
      home: Center(
        child: HomePages(),
      ),
    );
  }
}
