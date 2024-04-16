import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderMenu(),
    );
  }
}

class OrderMenu extends StatefulWidget {
  @override
  _OrderMenuState createState() => _OrderMenuState();
}

class _OrderMenuState extends State<OrderMenu> {
  List<String> _items = ['Pizza', 'Hamburguesa', 'Sushi', 'Ensalada'];
  List<String> _selectedItems = [];

  void _toggleItem(String item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Pedidos'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return CheckboxListTile(
            title: Text(item),
            value: _selectedItems.contains(item),
            onChanged: (_) => _toggleItem(item),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí puedes hacer algo con los elementos seleccionados, como enviar un pedido.
          print('Items seleccionados: $_selectedItems');
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
