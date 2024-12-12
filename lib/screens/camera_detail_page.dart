import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/camera_grid.dart';
import '../provider/cart_provider.dart';

class CameraDetailPage extends StatelessWidget {
  final CameraProduct cameraProduct;

  const CameraDetailPage({super.key, required this.cameraProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cameraProduct.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigasi ke halaman keranjang
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.network(
              //   camera['image'],
              //   height: 250,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              const SizedBox(height: 16),
              Text(
                // cameraProduct['name'],
                cameraProduct.category,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(height: 8),
              // Text(
              //   'Kategori: ${camera['category']}',
              //   style: const TextStyle(fontSize: 16, color: Colors.grey),
              // ),
              // const SizedBox(height: 8),
              // Row(
              //   children: [
              //     const Icon(Icons.star, color: Colors.amber, size: 20),
              //     const SizedBox(width: 4),
              //     Text(
              //       camera['rating'].toString(),
              //       style: const TextStyle(fontSize: 16),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 16),
              // Text(
              //   'Harga: Rp ${camera['price']}/hari',
              //   style: const TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.pink,
              //   ),
              // ),
              const SizedBox(height: 16),
              Divider(color: Colors.grey[300]),
              const SizedBox(height: 8),
              Text(
                'Spesifikasi Kamera',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // _buildSpecificationList(camera['specifications'] as List<Map<String, String>>?),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kamera ke keranjang
                  // Provider.of<CartProvider>(context, listen: false).addToCart(camera);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ditambahkan ke keranjang')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  'Tambah ke Keranjang',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpecificationList(List<Map<String, String>>? specifications) {
    if (specifications == null || specifications.isEmpty) {
      return const Text(
        'Tidak ada spesifikasi yang tersedia',
        style: TextStyle(fontSize: 16, color: Colors.black54),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: specifications.map((spec) {
        String key = spec.keys.first;
        String value = spec[key]!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                key,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
