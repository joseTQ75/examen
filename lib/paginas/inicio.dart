import 'package:flutter/material.dart';
import 'catalogo.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido a mi catálogo virtual',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Ingresar'),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Catalogo()));
              },
            ),
          ],
        ),
      ),
    );
  }
}