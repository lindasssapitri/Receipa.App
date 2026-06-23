import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'recipe/recipe_page.dart';    // Pastikan path import ini benar
import 'profile/profile_page.dart';  // Pastikan path import ini benar

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  // REVISI FINAL: Memanggil file asli, bukan teks statis
  final List<Widget> _pages = const [
    HomePage(),
    RecipePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE07A2F),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 85,
        decoration: const BoxDecoration(
          color: Color(0xFFF57C00),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavbarItem(Icons.home, 'Home', 0),
            _buildNavbarItem(Icons.list, 'Recipe', 1),
            _buildNavbarItem(Icons.person, 'Profile', 2),
          ],
        ),
      ),
    );
  }

  Widget _buildNavbarItem(IconData icon, String label, int index) {
    bool isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isActive ? Colors.white : Colors.white.withOpacity(0.6), size: 28),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.white.withOpacity(0.6),
              fontSize: 12,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}