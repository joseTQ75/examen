// Importa el paquete de widgets visuales de Flutter
import 'package:flutter/material.dart';

// Importa la función personalizada para leer archivos de texto desde assets
import '../utilidades/descripcion.dart';

// Define la clase CaballerosTab como un widget con estado (StatefulWidget)
class CaballerosTab extends StatefulWidget {
  @override
  _CaballerosTabState createState() => _CaballerosTabState(); // Crea el estado asociado
}

// Clase que contiene el estado de la pestaña "Caballeros"
class _CaballerosTabState extends State<CaballerosTab> {
  String? descripcion; // Variable para almacenar el texto leído del archivo
  bool mostrandoDescripcion = false; // Controla si se muestra o no la descripción

  // Función que se ejecuta al presionar el botón "Ver descripción"
  void cargarDescripcion() async {
    final texto = await leerDescripcion('assets/caballeros.txt'); // Lee el archivo de texto
    setState(() {
      descripcion = texto; // Guarda el contenido leído
      mostrandoDescripcion = true; // Activa la visualización del texto
    });
  }

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz visual de la pestaña
    return SingleChildScrollView( // Permite desplazamiento vertical si el contenido es largo
      padding: EdgeInsets.all(16), // Espaciado interno
      child: Column( // Organiza los elementos en vertical
        children: [
          Image.asset('assets/caballero.jpg'), // Muestra la imagen del producto
          SizedBox(height: 12), // Espacio entre elementos
          ElevatedButton( // Botón para mostrar la descripción
            onPressed: cargarDescripcion, // Ejecuta la función al presionar
            child: Text('Ver descripción'), // Texto del botón
          ),
          SizedBox(height: 12), // Espacio antes de mostrar el texto
          if (mostrandoDescripcion && descripcion != null) // Condición para mostrar el texto
            Container( // Contenedor con estilo para la descripción
              padding: EdgeInsets.all(12), // Espaciado interno
              decoration: BoxDecoration( // Estilo del contenedor
                border: Border.all(color: Colors.purple), // Borde púrpura
                borderRadius: BorderRadius.circular(8), // Bordes redondeados
              ),
              child: Text(descripcion!, // Muestra el texto leído
                style: TextStyle(fontSize: 16)), // Estilo del texto
            ),
        ],
      ),
    );
  }
}
