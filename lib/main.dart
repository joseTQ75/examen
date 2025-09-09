import 'package:flutter/material.dart';
import 'paginas/inicio.dart';

void main() => runApp(CatalogoApp());

class CatalogoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo Virtual',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Inicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}