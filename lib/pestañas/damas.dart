import 'package:flutter/material.dart';
import '../utilidades/descripcion.dart';

class DamasTab extends StatefulWidget {
  @override
  _DamasTabState createState() => _DamasTabState();
}

class _DamasTabState extends State<DamasTab> {
  String? descripcion;
  bool mostrandoDescripcion = false;

  void cargarDescripcion() async {
    final texto = await leerDescripcion('assets/damas.txt');
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
          Image.asset('assets/dama.jpg'),
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