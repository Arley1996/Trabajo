import 'package:flutter/material.dart';
import 'package:pro4/Api/consulta.dart';
import 'package:pro4/interfaz/grid.dart';
import 'package:pro4/interfaz/pedido.dart';
import 'package:pro4/interfaz/programador.dart';

void main(List<String> args) {
  runApp(VitrinaVirtual());
}

class VitrinaVirtual extends StatelessWidget {
  const VitrinaVirtual({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: INICIO(),
    );
  }
}

class INICIO extends StatefulWidget {
  const INICIO({super.key});

  @override
  State<INICIO> createState() => _INICIOState();
}

class _INICIOState extends State<INICIO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                    accountName: Text('BIENVENIDOS'),
                    accountEmail: Text('A Nuestra Vitrina Virtual'))),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              title: Text('MENU'),
              leading: Icon(Icons.menu),
              onTap: () {
                Buscatienda().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Vitrina Virtual"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                title: Text(r[i].title),
                                leading: Text(r[i].id.toString()),
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('PEDIDOS'),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pedidos(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('REPORTES'),
              leading: Icon(Icons.report),
            ),
            Divider(),
            ListTile(
              title: Text('DESARROLLADOR'),
              leading: Icon(Icons.person_3),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programa(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('GRID'),
              leading: Icon(Icons.grid_3x3),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GalleryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
                'https://http2.mlstatic.com/storage/mshops-appearance-api/images/44/90448844/logo-2020111922303536600.png'),
          ),
          Text('')
        ],
      ),
    );
  }
}
