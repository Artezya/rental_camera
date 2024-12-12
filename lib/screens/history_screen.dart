import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                final rentalData = historyItems[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.red[100],
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[850],
                      size: 32,
                    ),
                    title: Text(
                      rentalData["title"]!,
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Tanggal: ${rentalData["date"]}',
                      style: TextStyle(
                        color: Colors.grey[850],
                      ),
                    ),
                    trailing: Text(
                      rentalData["status"]!,
                      style: TextStyle(
                        color: rentalData["status"] == "Selesai" ? Colors.green : Colors.orange,
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
