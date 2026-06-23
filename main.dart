import 'package:flutter/material.dart';
// Mengarah ke folder splash dan file splash_screen1.dart yang ada di screenshot kamu
import 'splash/splash_screen1.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recepia App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // Memanggil class SplashScreen1 (sesuaikan nama class ini dengan isi file splash_screen1.dart kamu)
      home: const SplashScreen1(), 
    );
  }
}