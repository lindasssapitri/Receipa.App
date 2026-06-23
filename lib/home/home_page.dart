import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // REVISI: Path gambar diupdate ke folder 'assets/home/'
    final List<Map<String, String>> resepList = [
      {
        'title': 'Resep Bolu Keju',
        'image': 'assets/home/bolu_keju.png',
      },
      {
        'title': 'Resep Bolu Pisang',
        'image': 'assets/home/bolu_pisang.png',
      },
      {
        'title': 'Resep Donat Kentang',
        'image': 'assets/home/donat_kentang.png',
      },
      {
        'title': 'Resep Lapis Legit',
        'image': 'assets/home/lapis_legit.png',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), 
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            // 1. Bagian Atas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC107),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      // REVISI: Sesuaikan path logo dengan lokasi folder 'assets/splash 1/' atau 'assets/splash 3/'
                      child: Image.asset(
                        'assets/splash 1/logo_splash1.png', 
                        width: 140,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 36),
                ],
              ),
            ),
            
            const SizedBox(height: 25),

            // 2. Bar Pencarian
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'CARI RESEP HARI INI',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13, fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    suffixIcon: const Icon(Icons.mic, color: Colors.black),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 3. Grid Menu Resep
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100), 
                itemCount: resepList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  final resep = resepList[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFC107),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            resep['image']!,
                            width: 130,
                            height: 90,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 130, height: 90, color: Colors.amber[200],
                                child: const Icon(Icons.fastfood, color: Colors.orange),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          resep['title']!,
                          style: const TextStyle(
                            color: Color(0xFFD84315),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const Text("Lihat Detail", style: TextStyle(color: Colors.white, fontSize: 10)),
                        const Spacer(),
                        Container(
                          width: 120, padding: const EdgeInsets.symmetric(vertical: 6),
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE07A2F),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text("Lihat Resep", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}