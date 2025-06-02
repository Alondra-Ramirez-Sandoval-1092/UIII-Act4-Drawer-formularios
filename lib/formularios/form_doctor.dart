import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_doctor.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _correoController = TextEditingController();
  final _puestoController = TextEditingController();
  final _horarioController = TextEditingController();
  final _salarioController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _telefonoController.dispose();
    _correoController.dispose();
    _puestoController.dispose();
    _horarioController.dispose();
    _salarioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 40, 221, 176),
        title: const Text("Formulario de Doctores"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID del Doctor",
              myIcon: Icons.numbers,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre Completo",
              myIcon: Icons.person_outline,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _telefonoController,
              fieldName: "Telefono",
              myIcon: Icons.phone,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _correoController,
              fieldName: "Correo",
              myIcon: Icons.email,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _puestoController,
              fieldName: "Especialidad",
              myIcon: Icons.person_2,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _horarioController,
              fieldName: "Horario",
              myIcon: Icons.calendar_today,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
              hintText: "Ej: Lun-Vie 8:00am-5:00pm",
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _salarioController,
              fieldName: "Salario",
              myIcon: Icons.attach_money,
              prefixIconColor: const Color.fromARGB(255, 199, 60, 212),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(200, 50),
                side: const BorderSide(color: Color.fromARGB(255, 199, 60, 212)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Details(
                      idEmpleado: _idController.text,
                      nombre: _nombreController.text,
                      telefono: _telefonoController.text,
                      correo: _correoController.text,
                      puesto: _puestoController.text,
                      horario: _horarioController.text,
                      salario: _salarioController.text,
                    );
                  }),
                );
              },
              child: Text(
                "Guardar Doctor".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 199, 60, 212),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLines;

  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = const Color.fromARGB(255, 68, 255, 162),
    this.hintText,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: hintText,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 199, 60, 212)),
        ),
        labelStyle: const TextStyle(color: Color.fromARGB(255, 199, 60, 212)),
      ),
    );
  }
}