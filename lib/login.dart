import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tokoonline/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Judul
              const Text(
                'Log-in',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),

              // Logo
              Center(
                child: Image.asset(
                  'assets/logobro.png', // Ganti dengan path logo Anda
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),

              // Input Username/Email
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Username or Email',
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
              const SizedBox(height: 5),

              // Lupa Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Tambahkan fungsi lupa password
                  },
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Login
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    // Tambahkan fungsi login
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 15),

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

              // Sign-up
              Center(
  child: RichText(
    text: TextSpan(
      text: 'Belum punya akun? ',
      style: const TextStyle(color: Colors.black),
      children: [
        TextSpan(
          text: 'Signup',
          style: const TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            },
        ),
      ],
    ),
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
