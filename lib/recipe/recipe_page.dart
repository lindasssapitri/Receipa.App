import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Pastikan path image sesuai dengan folder assets/resep/
    final List<Map<String, String>> recipes = [
      {"title": "Resep Bolu Keju", "image": "assets/resep/bolu_keju_resep.png"},
      {"title": "Resep Bolu Pisang", "image": "assets/resep/bolu_pisang_resep.png"},
      {"title": "Donat Kentang", "image": "assets/resep/donat_kentang_resep.png"},
      {"title": "Lapis Legit", "image": "assets/resep/lapis_legit_resep.png"},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), // Warna oranye utama
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "CARI RESEP HARI INI",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    suffixIcon: Icon(Icons.mic, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ),
            const Text("RESEP TERSIMPAN", 
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            
            // Grid Resep
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7, // Disesuaikan agar lebih proporsional
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return _buildRecipeCard(recipes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeCard(Map<String, String> recipe) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2))]
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                recipe['image']!, 
                fit: BoxFit.cover, 
                width: double.infinity,
                errorBuilder: (c, o, s) => const Center(child: Icon(Icons.broken_image, size: 50, color: Colors.grey)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(recipe['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                const Text("Lihat Detail", style: TextStyle(fontSize: 10, color: Colors.grey)),
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFE07A2F), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    child: const Text("Lihat Resep", style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}