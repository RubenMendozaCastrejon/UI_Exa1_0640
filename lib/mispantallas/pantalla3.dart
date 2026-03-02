import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Estado de Cuenta - Investech'),
        backgroundColor: Colors.deepOrange[800],
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.download),
          SizedBox(width: 15),
          Icon(Icons.help_outline),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // --- SECCIÓN SUPERIOR: Banner de Resumen de Cuenta ---
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://images.unsplash.com/photo-1579621970563-ebec7560ff3e?q=80&w=600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          const SizedBox(height: 25),

          // --- SECCIÓN MEDIA: Gráfico de Crecimiento + Texto Real ---
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1543286386-713bdd548da4?q=80&w=600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Texto real sobre Investech
              const Text(
                "Análisis Mensual de Rendimiento",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 5),
              const Text(
                "Tu portafolio en Investech ha crecido un 4.5% este mes. Las inversiones en tecnología y energías renovables han sido los principales motores de tu balance positivo.",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
            ],
          ),

          const SizedBox(height: 25),

          // --- SECCIÓN INFERIOR: Detalles de Transacciones + Iconos ---
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(12),
              color: Colors.orange[50],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Detalles de Movimientos", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange, fontSize: 16)
                ),
                const SizedBox(height: 15),
                // Información textual real
                _buildInfoRow("Depósito Directo", "+ \$1,200.00 MXN"),
                _buildInfoRow("Dividendo Apple Inc.", "+ \$45.50 MXN"),
                _buildInfoRow("Comisión por Gestión", "- \$12.00 MXN"),
                
                const SizedBox(height: 20),
                
                // Fila inferior (Row) con pequeños iconos/marcadores
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(4, (index) => Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
                    ),
                    child: Icon(
                      index % 2 == 0 ? Icons.trending_up : Icons.verified_user, 
                      size: 16, 
                      color: Colors.deepOrange
                    ),
                  )),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 30),
          
          OutlinedButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.deepOrange[800],
              side: BorderSide(color: Colors.deepOrange[800]!),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text("Finalizar y Volver al Inicio"),
          ),
        ],
      ),
    );
  }

  // Widget auxiliar para las filas de información real
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.black54)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
        ],
      ),
    );
  }
}