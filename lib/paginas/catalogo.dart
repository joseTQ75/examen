import 'package:flutter/material.dart';
import '../pestañas/damas.dart';
import '../pestañas/caballeros.dart';

class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catálogo'),
          bottom: TabBar(tabs: [
            Tab(text: 'Damas'),
            Tab(text: 'Caballeros'),
          ]),
        ),
        body: TabBarView(children: [
          DamasTab(),
          CaballerosTab(),
        ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton.icon(
            icon: Icon(Icons.arrow_back),
            label: Text('Regresar'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}