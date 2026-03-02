import 'package:flutter/material.dart';
// Importación de tus pantallas (asegúrate de que los nombres de clase coincidan)
import 'mispantallas/inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(const InvestechApp());
}

class InvestechApp extends StatelessWidget {
  const InvestechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investech',
      debugShowCheckedModeBanner: false,
      
      // Configuración del tema para un look financiero
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),

      // Ruta inicial
      initialRoute: '/',

      // Definición del mapa de rutas
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}