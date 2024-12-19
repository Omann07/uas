import 'package:flutter/material.dart';

class KategoriPage extends StatefulWidget {
  const KategoriPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Favorite'),
      ),
      body: const Center(
        child: Text(
          'KategoriPage'
          ),
      ),
    );
  }
}
