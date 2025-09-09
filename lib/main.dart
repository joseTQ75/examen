// Importa el paquete principal de Flutter con todos los widgets visuales
import 'package:flutter/material.dart';

// Importa la pantalla de inicio desde la carpeta 'paginas'
import 'paginas/inicio.dart';

// Función principal que inicia la ejecución de la aplicación
void main() => runApp(CatalogoApp());

// Clase principal de la app, que extiende StatelessWidget porque no necesita manejar estados
class CatalogoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retorna el widget raíz de la aplicación
    return MaterialApp(
      title: 'Catálogo Virtual', // Título de la app (puede aparecer en el gestor de tareas)
      theme: ThemeData(primarySwatch: Colors.purple), // Define el tema visual con color púrpura
      home: Inicio(), // Establece la pantalla de inicio como la primera que se muestra
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de "DEBUG" en la esquina superior derecha
    );
  }
}
