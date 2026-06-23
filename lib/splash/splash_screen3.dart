import 'package:flutter/material.dart';
import '../auth/login_page.dart'; // Jalur import ke login_page.dart yang sejajar di folder auth

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), // Background oranye khas Recepia
      body: SafeArea(
        child: Stack(
          children: [
            // 1. Tombol Kembali (Back Button) di Pojok Kiri Atas
            Positioned(
              top: 20,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  // Kembali ke Splash Screen 2
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFC107), // Warna kuning tombol back
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),

            // 2. Konten Utama (Logo, Mangkok Makanan, dan Teks Deskripsi)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo Recepia.App
                    Image.asset(
                      'assets/splash 3/logo_splash3.png',
                      width: 180,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),

                    // Gambar Mangkok Makanan (Maskot Splash 3)
                    Image.asset(
                      'assets/splash 3/maskot_splash3.png',
                      width: 260,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 40),

                    // Teks Deskripsi dari Figma
                    const Text(
                      "Temukan resep andalanmu, simpan ke daftar favorit, dan masak kembali kapan saja dengan mudah!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                    
                    const SizedBox(height: 140), 
                  ],
                ),
              ),
            ),

            // 3. Bagian Bawah: Tombol Mulai & Indikator Titik Ke-3
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Mulai (Menuju ke Halaman Login + Teks Di Atasnya)
                  GestureDetector(
                    onTap: () {
                      // Menggunakan pushReplacement agar ketika di halaman login, 
                      // user tidak bisa menekan tombol back HP untuk kembali ke splash screen lagi
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(), // Mengarah ke class LoginPage kamu
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center, // Memastikan teks presisi di tengah tombol gambar
                      children: [
                        Image.asset(
                          'assets/splash 3/button_splash3.png',
                          width: 220,
                          fit: BoxFit.contain,
                        ),
                        const Text(
                          "Mulai",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 40),

                  // Tiga Titik Indikator (Titik ke-3 yang Aktif)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Titik 1: Tidak Aktif
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      
                      // Titik 2: Tidak Aktif
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      
                      // Titik 3: Aktif (Putih Terang, Bentuk Kapsul)
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
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