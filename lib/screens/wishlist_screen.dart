import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  final VoidCallback onExploreCamera; // Callback untuk navigasi

  const WishlistScreen({Key? key, required this.onExploreCamera})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        title: const Text(
          'Wishlist Saya',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 100, color: Colors.pink[200]),
            const SizedBox(height: 16),
            const Text(
              'Belum ada kamera dalam wishlist',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onExploreCamera, // Panggil callback
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[700],
              ),
              child: const Text('Jelajahi Kamera'),
            ),
          ],
        ),
      ),
    );
  }
}