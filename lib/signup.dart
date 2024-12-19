import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Center(
                child: Image.asset(
                  'assets/logobro.png', // Ganti dengan path logo Anda
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),

              // Input Nama Lengkap
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Input Email
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Input Username
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Input Password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Sign Up
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    // Tambahkan fungsi Sign Up
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Divider atau teks "atau"
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.black26)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('atau', style: TextStyle(color: Colors.black45)),
                  ),
                  Expanded(child: Divider(color: Colors.black26)),
                ],
              ),
              const SizedBox(height: 10),

              // Continue with Google
              OutlinedButton.icon(
                onPressed: () {
                  // Tambahkan fungsi Google login
                },
                icon: Image.asset(
                  'assets/google_icon.png', // Ganti dengan path icon Google Anda
                  height: 20,
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(fontSize: 16),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  side: const BorderSide(color: Colors.black12),
                ),
              ),
              const SizedBox(height: 20),

              // Sudah punya akun? Login
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Sudah punya akun? ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context); // Kembali ke halaman Login
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
