import 'package:flutter/material.dart';
// Mengimport halaman Splash Screen 2 agar bisa dihubungkan jembatan navigasinya
import 'splash_screen2.dart'; 

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Warna background oranye sesuai dengan desain Figma kamu
      backgroundColor: const Color(0xFFE07A2F), 
      body: SafeArea(
        child: Stack(
          children: [
            // 1. Bagian Tengah: Logo Recepia.App
            Center(
              child: Image.asset(
                'assets/splash 1/logo_splash1.png', 
                width: 280, // Ukuran lebar logo
                fit: BoxFit.contain,
              ),
            ),

            // 2. Bagian Bawah: Tombol Mulai & Indikator Titik
            Positioned(
              bottom: 60, // Jarak dari bawah layar
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Mulai (Menggunakan Aset Gambar + Teks Di Atasnya)
                  GestureDetector(
                    onTap: () {
                      // Perintah navigasi final untuk berpindah ke Splash Screen 2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplashScreen2(),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center, // Memastikan teks presisi di tengah tombol gambar
                      children: [
                        Image.asset(
                          'assets/splash 1/button_splash1.png', 
                          width: 220, // Ukuran lebar tombol sesuai desain
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
                  
                  const SizedBox(height: 40), // Jarak antara tombol dan titik

                  // Tiga Titik Indikator (Page Indicator)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Titik 1: Aktif (Putih Terang, Bentuk Kapsul)
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Titik 2: Tidak Aktif (Agak Transparan)
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Titik 3: Tidak Aktif (Agak Transparan)
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
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