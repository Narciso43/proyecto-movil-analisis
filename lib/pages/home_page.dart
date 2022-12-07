import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APLICACION DE ANALISIS DE IMAGENES'),
      ),
      body: Center(
        child: Container(
          child: Text('Contenido explicito'),
        ),
      ),
    );
  }
}
