/* No nos dejo trabajar con el contador,
esto porque es un StatelessWidget, 
en su lugar trabajamos con un StatefullWidget
 */

import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  // Aqui podria remplazar 'TextStyle  por la palabra final
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: estiloTexto),
            Text(
              '$conteo',
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, // Nos sirve para cambiar la posicion del boton dentro del Scaffold
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('HolaMundo');
          // conteo = conteo + 1 ;
        },
      ),
    );
  }
}
