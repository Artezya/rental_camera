import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_camera/screens/product_camera.dart';
import '../provider/history_provider.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyProvider = Provider.of<HistoryProvider>(context);
    final historyItems = historyProvider.historyItems;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        title: const Text(
          'Riwayat Sewa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: historyItems.isEmpty
          ? Center(
              child: Text(
                'Belum ada riwayat sewa',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: historyItems.length,
              itemBuilder: (context, index) {
                final CameraProduct rentalData = historyItems[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.red[100],
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    leading: Image.network(
                      rentalData.imageUrl, // Gambar produk
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      rentalData.name, // Nama kamera
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Harga: Rp ${rentalData.price}/hari', // Harga kamera
                      style: TextStyle(
                        color: Colors.grey[850],
                      ),
                    ),
                    trailing: Text(
                      'Selesai', // Status default
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
