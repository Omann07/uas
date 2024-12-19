import 'package:flutter/material.dart'; 

class AkunPage extends StatefulWidget {
  const AkunPage({super.key});

  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/logobro.png",
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BronzStuff',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Member Platinum',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            // Menu List
            ListTile(
              leading: const Icon(Icons.person, color: Colors.black),
              title: const Text('Edit Profile'),
              onTap: () {
                // Navigasi ke halaman EditProfilePage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfilePage(),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.mail, color: Colors.black),
              title: Text('Pesan'),
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.black),
              title: const Text('Riwayat Pesanan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RiwayatPesananPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.black),
              title: const Text('Notifikasi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotifikasiPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            // Hot Promo Section
            const Text(
              '🔥 Hot Promo',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 12),
            // Promo Cards
            Row(
              children: [
                Expanded(
                  child: PromoCard(
                    imageUrl: 'assets/baju1.png',
                    title: 'Nike x Cactus Plant Flea Market',
                    price: 'Rp. 5.500.000',
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: PromoCard(
                    imageUrl: 'assets/baju1.png',
                    title: 'Nike Vintage Forest Green',
                    price: 'Rp. 750.000',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Halaman EditProfilePage
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: AssetImage("assets/logobro.png"),
            ),
            const SizedBox(height: 24),
            TextFormField(
              initialValue: 'BronzStuff',
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: '08121748945676',
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Telephone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: 'Bronzstuff@gmail.com',
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: 'Jl. Tawang Mulya No 5C',
              decoration: InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 250, 129, 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: const Size(double.infinity, 48),
              ),
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 250, 129, 8),
                      title: const Center(
                        child: Text(
                          'LOG OUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      content: const Text(
                        'Apakah anda yakin ingin logout?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      actionsAlignment: MainAxisAlignment.center,
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Menutup dialog
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color.fromARGB(255, 250, 129, 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text('CANCEL'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Menutup dialog
                            // Tambahkan fungsi logout di sini
                            Navigator.pushReplacementNamed(context, '/login'); // Contoh navigasi ke halaman login
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color.fromARGB(255, 250, 129, 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text('OKE'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: const Size(double.infinity, 48),
                side: const BorderSide(color: Colors.black),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Kelas RiwayatPesananPage dan PromoCard tetap sama seperti sebelumnya

class RiwayatPesananPage extends StatelessWidget {
  const RiwayatPesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Riwayat Pesanan'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi pop ke halaman sebelumnya
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 5, // Jumlah pesanan
        itemBuilder: (context, index) {
          // Tentukan status pesanan berdasarkan index (contoh sederhana)
          String status = index % 2 == 0 ? 'Dikirim' : 'Diterima';

          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2,
            child: Row(
              children: [
                // Gambar produk
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://via.placeholder.com/100',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                // Informasi produk
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nike x Cactus Plant Flea Market',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        const Text(
                          'All Size',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // Harga
                            const Text(
                              'Rp. 5.500.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            // Spacer untuk memisahkan harga dan status
                            const Spacer(),
                            // Status pesanan
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0), // Tambahkan padding kanan
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6), // Tambahkan padding dalam container
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const PromoCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(  // Use Image.asset for local assets
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 129, 8),
        title: const Text('Notifikasi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Status Pesanan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  NotifikasiCard(
                    imageUrl: 'https://via.placeholder.com/80',
                    title: 'Konfirmasi Penerimaan Pesanan',
                    description:
                        'Jika kamu belum menerima pesanan OxxxxxxxxIDxxxxxxx...',
                    date: '13-10-2024',
                    time: '22:20',
                  ),
                  const SizedBox(height: 16),
                  NotifikasiCard(
                    imageUrl: 'https://via.placeholder.com/80',
                    title: 'Pesananmu sedang di proses',
                    description:
                        'Pesananmu sedang dikemas OxxxxxxxxIDxxxxxxx...',
                    date: '13-10-2024',
                    time: '22:00',
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

class NotifikasiCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String date;
  final String time;

  const NotifikasiCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
        subtitle: Text(description),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(date),
            Text(time),
          ],
        ),
      ),
    );
  }
}
