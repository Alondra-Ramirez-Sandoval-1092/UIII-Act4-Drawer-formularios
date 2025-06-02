import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.idEmpleado,
    required this.nombre,
    required this.telefono,
    required this.correo,
    required this.puesto,
    required this.horario,
    required this.salario,
  }) : super(key: key);

  final String idEmpleado;
  final String nombre;
  final String telefono;
  final String correo;
  final String puesto;
  final String horario;
  final String salario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Empleado"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildMangaCard(
              icon: Icons.book,
              id: idEmpleado,
              nombre: nombre,
              telefono: telefono,
              correo: correo,
              horario: horario,
              salario: salario,
              puesto: puesto,
            ),
            
            const SizedBox(height: 12),
            _buildMangaCard(
              icon: Icons.auto_stories,
              id: "002",
              nombre: "Addison Montelongo",
              telefono: "656 798 6690",
              correo: "addimon@gmial.com",
              horario: "Lun-Jue 11:00am-2:00pm",
              salario: "12000.00",
              puesto: "Ginecologa",
            ),
            const SizedBox(height: 12),
            _buildMangaCard(
              icon: Icons.wb_sunny,
              id: "003",
              nombre: "Mark Solis",
              telefono: "656 744 3365",
              correo: "markguapo@gmail.com",
              horario: "Mar-Sab 1:00pm-5:00pm",
              salario: "10000.00",
              puesto: "Cirujano Plastico",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMangaCard({
    required IconData icon,
    required String id,
    required String nombre,
    required String telefono,
    required String correo,
    required String horario,
    required String salario,
    required String puesto,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Iconos superior izquierda y derecha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, size: 28, color: Colors.deepPurple),
                const Icon(Icons.delete, color: Colors.red), // Solo decorativo
              ],
            ),
            const SizedBox(height: 8),
            _buildDetailRow(Icons.numbers, "ID:", id),
            _buildDetailRow(Icons.person_outline, "Nombre:", nombre),
            _buildDetailRow(Icons.phone, "Telefono:", telefono),
            _buildDetailRow(Icons.email, "Correo:", correo),
            _buildDetailRow(Icons.person_2, "Puesto:", puesto),
            _buildDetailRow(Icons.calendar_today, "Horario:", horario),
            _buildDetailRow(Icons.attach_money, "Salario:", "\$$salario"),
            const SizedBox(height: 12),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple.shade400, size: 20),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}