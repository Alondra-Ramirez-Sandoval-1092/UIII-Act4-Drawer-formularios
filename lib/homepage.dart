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
                  child: Text(
                    "AM",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.white,
                
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}