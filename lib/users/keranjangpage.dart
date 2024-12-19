import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  List<bool> _selectedItems = [false, false, false, false, false];
  final List<Map<String, String>> _items = [
    {"name": "Nike x Cactus Plant Flea Market", "price": "Rp.5.500.000", "image": "assets/baju1.png"},
    {"name": "Nike x Cactus Plant Flea Market", "price": "Rp.5.500.000", "image": "assets/baju1.png"},
    {"name": "Nike x Cactus Plant Flea Market", "price": "Rp.5.500.000", "image": "assets/baju1.png"},
    {"name": "Nike x Cactus Plant Flea Market", "price": "Rp.5.500.000", "image": "assets/baju1.png"},
    {"name": "Nike x Cactus Plant Flea Market", "price": "Rp.5.500.000", "image": "assets/baju1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Keranjang'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                    value: _selectedItems[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _selectedItems[index] = value!;
                      });
                    },
                  ),
                  title: Text(_items[index]["name"]!),
                  subtitle: Text(_items[index]["price"]!),
                  trailing: Image.asset(
                    _items[index]["image"]!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total: Rp.${_selectedItems.where((selected) => selected).length * 5500000}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implementasikan fungsi checkout
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 129, 8),
                  ),
                  child: const Text("Checkout"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
