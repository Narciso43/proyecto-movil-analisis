import 'dart:ffi';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static final String routeName = '/';
  const RegisterPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.brown[100],
        child: Column(
          children: [
            SizedBox(height: 43),
            Icon(
              Icons.app_registration_rounded,
              size: 120,
              color: Colors.white,
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('REGISTRO DE USUARIO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )),
                      const SizedBox(height: 20),
                      TextField(
                        // los constantes son porque no se modicada la decoracion
                        // en la ejecucion
                        decoration: const InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: 'Correo Electronico'),
                      ),
                      TextField(
                        // los constantes son porque no se modicada la decoracion
                        // en la ejecucion
                        decoration: const InputDecoration(
                            icon: Icon(Icons.password_rounded),
                            hintText: 'Contraseña'),
                      ),

                      // Por medio de funciones  anonimas.
                      ElevatedButton(onPressed: () {}, child: Text('Registrar'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
