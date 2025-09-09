// Importa solo el objeto 'rootBundle' del paquete 'services' de Flutter.
// 'rootBundle' permite acceder a archivos que están incluidos en los assets de la app.
import 'package:flutter/services.dart' show rootBundle;

// Define una función asincrónica que recibe la ruta de un archivo como parámetro.
// Esta función se usa para leer archivos de texto (.txt) desde la carpeta 'assets'.
Future<String> leerDescripcion(String ruta) async {
  // Utiliza 'rootBundle.loadString' para cargar el contenido del archivo como una cadena de texto.
  // El resultado se devuelve directamente como un 'Future<String>'.
  return await rootBundle.loadString(ruta);
}
