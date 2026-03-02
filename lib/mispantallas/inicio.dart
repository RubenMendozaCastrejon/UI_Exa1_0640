import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Investech - Home'),
        backgroundColor: Colors.indigo[900], 
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.account_balance),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Identificación solicitada
              const Text(
                "Rubén Mendoza - 6I",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 20),

              // --- SECCIÓN SUPERIOR: Banner Principal con Imagen Real ---
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect( // ClipRRect para redondear los bordes de la imagen
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/4-1024x576.png', // Reemplaza con tu URL
                    fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
                    errorBuilder: (context, error, stackTrace) { // Manejo de errores de carga
                      return const Center(child: Text('Error al cargar la imagen'));
                    },
                  ),
                ),
              ),
              
              const SizedBox(height: 20),

              // --- SECCIÓN MEDIA: Barra Redondeada con Imagen ---
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30), 
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/la-importancia-de-diversificar-tu-portafolio-de-inversiones.webp', // Reemplaza con tu URL
                    fit: BoxFit.cover, 
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // --- SECCIÓN INFERIOR: Cuadrícula 2x2 con Imágenes Reales ---
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: [
                  // Imagen 1 de la cuadrícula
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/6vr11d2ldyl71.webp', // Reemplaza con tu URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Imagen 2 de la cuadrícula
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/square_google-plus_icon-icons.com_68021.webp', // Reemplaza con tu URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Imagen 3 de la cuadrícula
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/netflix-icon-illustration-in-square-background-free-vector.jpg', // Reemplaza con tu URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Imagen 4 de la cuadrícula
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/tesla-logo-tesla-icon-transparent-png-free-vector.jpg', // Reemplaza con tu URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),

              // Botón de navegación (sin cambios)
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text("Ir a Análisis", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}