import 'package:flutter/material.dart';
import '../utilidades/descripcion.dart';

class CaballerosTab extends StatefulWidget {
  @override
  _CaballerosTabState createState() => _CaballerosTabState();
}

class _CaballerosTabState extends State<CaballerosTab> {
  String? descripcion;
  bool mostrandoDescripcion = false;

  void cargarDescripcion() async {
    final texto = await leerDescripcion('assets/caballeros.txt');
    setState(() {
      descripcion = texto;
      mostrandoDescripcion = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset('assets/caballero.jpg'),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: cargarDescripcion,
            child: Text('Ver descripción'),
          ),
          SizedBox(height: 12),
          if (mostrandoDescripcion && descripcion != null)
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(descripcion!,
                style: TextStyle(fontSize: 16)),
            ),
        ],
      ),
    );
  }
}