import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F), // Oranye Recepia
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Foto Profil (Lingkaran besar)
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.orange, // placeholder
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 40),
              
              // Kotak-kotak Informasi
              _buildInfoBox("Linda Sapitri", Icons.edit),
              _buildInfoBox("27/09/2004", Icons.calendar_today),
              _buildInfoBox("STI202303411", null),
              _buildInfoBox("MAHASISWA", null),
              _buildInfoBox("S1 TEKNIK INFORMATIKA", null),
              
              const SizedBox(height: 30),
              
              // Tombol Logout
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text("Logout", 
                    style: TextStyle(color: Color(0xFFE07A2F), fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget pembantu untuk kotak putih
  Widget _buildInfoBox(String text, IconData? trailingIcon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          if (trailingIcon != null) Icon(trailingIcon, color: Colors.orange, size: 20),
        ],
      ),
    );
  }
}