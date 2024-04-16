import 'package:flutter/material.dart';

class programa extends StatefulWidget {
  const programa({super.key});

  @override
  State<programa> createState() => _programaState();
}

class _programaState extends State<programa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFORMACIÓN DEL DESARROLLLADOR'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://png.pngtree.com/png-clipart/20190603/original/pngtree-blue-earth-science-and-technology-png-image_572223.jpg'),
                radius: 60,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_3),
            title: Text('NOMBRE'),
            subtitle: Text('Arlevy Arias'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('CELULAR'),
            subtitle: Text('3015704678'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('CORREO'),
            subtitle: Text('arias.arley1996@gmail.com'),
            onTap: () {
              // Acción para compartir la aplicación
            },
          ),
        ],
      ),
    );
  }
}
