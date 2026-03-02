import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Análisis Pro'),
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.query_stats),
          SizedBox(width: 15),
          Icon(Icons.share),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- SECCIÓN SUPERIOR (HEADER/BANNER) ---
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/inversiones.jpg', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // --- SECCIÓN DE TEXTO ---
              Text(
                "Rendimiento de Activos",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900],
                    ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Explora el comportamiento de tus activos en tiempo real. "
                "Utiliza las herramientas de análisis para optimizar tu portafolio.",
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 25),

              // --- CUADRÍCULA DE ACCIONES (3 RECUADROS IGUALES) ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (index) => Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/istockphoto-914231826-170667a.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("Acción ${index + 1}", style: const TextStyle(fontSize: 12)),
                  ],
                )),
              ),
              const SizedBox(height: 30),

              // --- SECCIÓN DETALLE (RECTÁNGULO + 3 MINIATURAS) ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    // Imagen rectangular grande (Gráfico principal)
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/inversiones-sostenibles.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Fila de 3 recuadros pequeños (miniaturas/iconos con fondo de imagen)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) => Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            'https://raw.githubusercontent.com/RubenMendozaCastrejon/Imagenes-Exam/refs/heads/main/12292861.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              Center(
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Ir a Perfil"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[700],
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}