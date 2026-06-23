import 'package:flutter/material.dart';
import 'splash_screen3.dart'; // Import halaman ke-3 untuk navigasi nanti

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), // Background oranye Figma kamu
      body: SafeArea(
        child: Stack(
          children: [
            // 1. Tombol Kembali (Back Button) di Pojok Kiri Atas
            Positioned(
              top: 20,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  // Kembali ke Splash Screen 1
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

            // 2. Konten Utama (Logo, Maskot, dan Teks Deskripsi)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo Recepia
                    Image.asset(
                      'assets/splash 2/logo_splash2.png',
                      width: 180,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),

                    // Maskot Koki 3D
                    Image.asset(
                      'assets/splash 2/maskot_splash2.png',
                      width: 260,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 40),

                    // Teks Deskripsi dari Figma
                    const Text(
                      "Jelajahi ribuan resep lezat, simpan menu favorit, dan masak lebih mudah setiap hari",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5, // Mengatur jarak antar baris teks
                      ),
                    ),
                    
                    // Memberikan ruang kosong fleksibel agar tombol tidak menutupi teks di layar kecil
                    const SizedBox(height: 140), 
                  ],
                ),
              ),
            ),

            // 3. Bagian Bawah: Tombol Mulai & Indikator Titik Ke-2
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Tombol Mulai Splash 2 (Aset Gambar + Teks Di Atasnya)
                  GestureDetector(
                    onTap: () {
                      // Navigasi pindah ke Splash Screen 3
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplashScreen3(),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center, // Memastikan teks presisi di tengah tombol gambar
                      children: [
                        Image.asset(
                          'assets/splash 2/button_splash2.png',
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

                  // Tiga Titik Indikator (Titik ke-2 yang Aktif)
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
                      
                      // Titik 2: Aktif (Putih Terang, Bentuk Kapsul)
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      
                      // Titik 3: Tidak Aktif
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