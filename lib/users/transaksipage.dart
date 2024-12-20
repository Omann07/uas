import 'package:flutter/material.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  _TransaksiPageState createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 5, // Jumlah pesanan
        itemBuilder: (context, index) {
          return SizedBox(
            height: 130, // Tinggi tetap untuk semua kartu
            child: PesananCard(
              imageUrl: 'https://via.placeholder.com/100', // URL gambar
              title: 'Nike x Cactus Plant Flea Market',
              size: 'All Size',
              price: 'Rp. 5.500.000',
              status: index % 2 == 0 ? 'Dikirim' : 'Diterima',
            ),
          );
        },
      ),
    );
  }
}

class PesananCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String size;
  final String price;
  final String status;

  const PesananCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.size,
    required this.price,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gambar produk
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Informasi produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    size,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  // Harga dan Status dalam 1 Row
                  Row(
                    children: [
                      // Harga
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(), // Tambahkan spacer agar fleksibel
                      // Status Pesanan
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6), // Padding dalam container
                        decoration: BoxDecoration(
                          color: status == 'Dikirim'
                              ? Colors.orange.shade50
                              : Colors.green.shade50,
                          border: Border.all(
                            color: status == 'Dikirim'
                                ? Colors.orange
                                : Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: status == 'Dikirim'
                                ? Colors.orange
                                : Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
