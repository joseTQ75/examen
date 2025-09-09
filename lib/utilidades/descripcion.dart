import 'package:flutter/services.dart' show rootBundle;

Future<String> leerDescripcion(String ruta) async {
  return await rootBundle.loadString(ruta);
}