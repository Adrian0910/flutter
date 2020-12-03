import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorpagesState();
}

class _ContadorpagesState extends State<ContadorPage> {
  // _ pone esta clase en privado

  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de taps: ', style: _estiloTexto),
            Text(
              '$_conteo',
              style: _estiloTexto,
            )
          ],
        ),
      ),
      /* floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat,  Nos sirve para cambiar la posicion del boton dentro del Scaffold */
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    // Nos permite alinear los 3 botones
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed:
                _agregar), // Sin parentesis porque no se ejecuta la funcion al momento de crearlo
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
