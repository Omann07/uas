import 'package:flutter/material.dart';
import 'package:tokoonline/users/akunpage.dart';
import 'package:tokoonline/users/beranda.dart';
import 'package:tokoonline/users/favoritepage.dart';
import 'package:tokoonline/users/keranjangpage.dart';
import 'package:tokoonline/users/transaksipage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> container = [
    const Beranda(),
    const FavoritePage(),
    const KeranjangPage(),
    const TransaksiPage(),
    const AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 253, 253), // Membuat AppBar transparan
        elevation: 0, // Menghapus bayangan AppBar
      ),
      body: container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 250, 129, 8), // Warna item aktif
        unselectedItemColor: Colors.grey, // Warna item tidak aktif
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 250, 129, 8),
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 250, 129, 8),
            ),
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 250, 129, 8),
            ),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.receipt,
              color: Color.fromARGB(255, 250, 129, 8),
            ),
            icon: Icon(
              Icons.receipt_long_outlined,
              color: Colors.grey,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 250, 129, 8),
            ),
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
