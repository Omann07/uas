import 'package:flutter/material.dart';

class DepanPage extends StatefulWidget {
  const DepanPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DepanPageState createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Favorite'),
      ),
      body: const Center(
        child: Text(
          'DepanPage'
          ),
      ),
    );
  }
}
