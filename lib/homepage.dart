import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 54, 244, 171),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 41, 199, 138)),
              accountName: Text("Alondra Ramirez 1092"), 
              accountEmail: Text("a.22308051281092@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector( 
                child: CircleAvatar(
                  radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Alondra-Ramirez-Sandoval-1092/jinstar_imagenes/refs/heads/main/usuario.png'),
            ),
                ),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Pagina Inico"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/doctor");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Doctores"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/empleado");},
                leading: Icon(Icons.person_2_outlined, color: Colors.black),
                title: Text("Empleados"),
              ),
            ),
          ],
        ),
      ),

    );
  }
}