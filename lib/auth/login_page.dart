import 'package:flutter/material.dart';
import '../main_layout.dart'; // Import ini untuk navigasi setelah login sukses

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk mengambil data dari inputan
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  // Status untuk sembunyikan/lihat password
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), // Background Oranye
      body: SafeArea(
        child: Stack(
          children: [
            // 1. Konten Form Login (Bisa di-scroll)
            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 80), // Jarak disesuaikan agar pas di bawah tombol back
                    
                    // Logo Login
                    Image.asset(
                      'assets/login/logo_login.png',
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 50),

                    // Input Email
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Input Sandi
                    TextField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Sandi',
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.orange,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Teks Link Daftar & Lupa Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text("Belum Punya Akun? ", style: TextStyle(color: Colors.white, fontSize: 12)),
                            GestureDetector(
                              onTap: () => print("Ke Halaman Daftar"),
                              child: const Text("Daftar Akun", style: TextStyle(color: Color(0xFFFFC107), fontWeight: FontWeight.bold, fontSize: 12)),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () => print("Ke Lupa Password"),
                          child: const Text("Lupa Password?", style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),

                    // Tombol Masuk (Sekarang sudah dibungkus Stack + Teks "Masuk")
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke Main Layout (Halaman Ber-Navbar)
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MainLayout()),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.center, // Memastikan tulisan pas di tengah tombol
                        children: [
                          Image.asset(
                            'assets/login/button_login.png',
                            width: 220,
                            fit: BoxFit.contain,
                          ),
                          const Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Text("Atau", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 20),

                    // Tombol Login Google
                    GestureDetector(
                      onTap: () => print("Login Google"),
                      child: Container(
                        width: 220,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE07A2F),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/login/google.png', width: 20),
                            const SizedBox(width: 15),
                            const Text(
                              "LOGIN GOOGLE",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40), // Ruang ekstra di bawah saat scroll
                  ],
                ),
              ),
            ),

            // 2. Tombol Kembali di Pojok Kiri Atas (Tetap mengambang di atas/floating)
            Positioned(
              top: 20,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFC107),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}