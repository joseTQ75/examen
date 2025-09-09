// Importa el paquete de widgets visuales de Flutter
import 'package:flutter/material.dart';

// Importa la pantalla del catálogo desde el archivo 'catalogo.dart'
import 'catalogo.dart';

// Define la clase 'Inicio' como un widget sin estado (StatelessWidget)
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Construye la interfaz visual de la pantalla de inicio
    return Scaffold( // Estructura básica de la pantalla con barra y cuerpo
      body: Center( // Centra el contenido vertical y horizontalmente
        child: Column( // Organiza los elementos en una columna vertical
          mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente
          children: [
            // Muestra el texto de bienvenida con estilo
            Text('Bienvenido a mi catálogo virtual',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            
            SizedBox(height: 30), // Espacio entre el texto y el botón

            // Botón que permite ingresar al catálogo
            ElevatedButton(
              child: Text('Ingresar'), // Texto del botón
              onPressed: () {
                // Navega a la pantalla del catálogo al presionar el botón
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
