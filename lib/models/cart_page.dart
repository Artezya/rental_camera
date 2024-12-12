import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/history_provider.dart';
import '../provider/cart_provider.dart';
 import 'package:url_launcher/url_launcher.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final historyProvider = Provider.of<HistoryProvider>(context);
    final cartItems = cartProvider.cartItems;
    final totalPrice = cartProvider.getTotalPrice();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                'Keranjang kosong',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Image.network(item['image'], width: 50, fit: BoxFit.cover),
                        title: Text(item['name']),
                        subtitle: Text('Rp ${item['price']}/hari'),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_circle),
                          onPressed: () {
                            cartProvider.removeFromCart(item);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Dihapus dari keranjang')),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Total Harga: Rp $totalPrice',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          _showCheckoutDialog(context, cartProvider, historyProvider);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[300],
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text(
                          'Sewa Sekarang',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }


void _showCheckoutDialog(
    BuildContext context, CartProvider cartProvider, HistoryProvider historyProvider) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Konfirmasi Checkout'),
        content: const Text('Apakah Anda ingin melanjutkan pembayaran via WhatsApp?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () async {
              // Buat pesan otomatis untuk pembayaran via WhatsApp
              final message = "Halo, saya ingin melakukan pembayaran untuk pesanan sewa kamera. Total pesanan: Rp ${cartProvider.getTotalPrice()}";
              final whatsappNumber = "6288224250991"; // Ganti dengan nomor WhatsApp Anda (tanpa tanda +)
              final whatsappUrl = "https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message)}";

              if (await canLaunch(whatsappUrl)) {
                await launch(whatsappUrl);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tidak dapat membuka WhatsApp')),
                );
              }

              // Tambahkan transaksi ke riwayat setelah pembayaran
              historyProvider.addHistoryItem({
                "title": "Sewa Kamera",
                "date": DateTime.now().toString(),
                "status": "Selesai"
              });

              // Bersihkan keranjang dan tutup dialog
              cartProvider.clearCart();
              Navigator.of(context).pop();

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Checkout berhasil!')),
              );

              // Navigasi ke halaman riwayat
              Navigator.pushNamed(context, '/history');
            },
            child: const Text('Ya, Bayar via WhatsApp'),
          ),
        ],
      );
    },
  );
}
}
