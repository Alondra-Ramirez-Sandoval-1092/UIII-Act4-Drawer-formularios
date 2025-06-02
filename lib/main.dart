import 'package:flutter/material.dart';
import 'package:myapp/formularios/form_doctor.dart';
import 'package:myapp/formularios/form_empleados.dart';
import 'package:myapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home":(context) => HomePage(),
        "/doctor":(context) => Doctor(),
        "/empleado":(context) => Empleados(),
      },

    );
  }
}
