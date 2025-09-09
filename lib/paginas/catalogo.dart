// Importa el paquete de widgets visuales de Flutter
import 'package:flutter/material.dart';

// Importa las pestañas personalizadas para damas y caballeros
import '../pestañas/damas.dart';
import '../pestañas/caballeros.dart';

// Define la clase 'Catalogo' como un widget sin estado (StatelessWidget)
class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Utiliza un controlador de pestañas con dos opciones: Damas y Caballeros
    return DefaultTabController(
      length: 2, // Número de pestañas
      child: Scaffold( // Estructura principal de la pantalla
        appBar: AppBar( // Barra superior con título y pestañas
          title: Text('Catálogo'), // Título de la pantalla
          bottom: TabBar( // Barra de pestañas
            tabs: [
              Tab(text: 'Damas'), // Pestaña para productos de damas
              Tab(text: 'Caballeros'), // Pestaña para productos de caballeros
            ],
          ),
        ),
        body: TabBarView( // Contenido que se muestra según la pestaña seleccionada
          children: [
            DamasTab(), // Widget que muestra la interfaz de damas
            CaballerosTab(), // Widget que muestra la interfaz de caballeros
          ],
        ),
        bottomNavigationBar: Padding( // Botón inferior para regresar a la pantalla anterior
          padding: const EdgeInsets.all(12.0), // Espaciado alrededor del botón
          child: ElevatedButton.icon( // Botón con ícono y texto
            icon: Icon(Icons.arrow_back), // Ícono de flecha hacia atrás
            label: Text('Regresar'), // Texto del botón
            onPressed: () => Navigator.pop(context), // Acción: volver a la pantalla anterior
          ),
        ),
      ),
    );
  }
}
