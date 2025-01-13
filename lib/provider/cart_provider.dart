import 'package:flutter/foundation.dart';
import 'package:rental_camera/screens/product_camera.dart';


class CartProvider with ChangeNotifier {
  final List<CameraProduct> _cartItems = []; // Menggunakan CameraProduct

  List<CameraProduct> get cartItems => _cartItems;

  // Tambahkan produk ke keranjang
  void addToCart(CameraProduct product) {
    _cartItems.add(product);
    notifyListeners();
  }

  // Hapus produk dari keranjang
  void removeFromCart(CameraProduct product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  // Hitung total harga dari keranjang
  double getTotalPrice() {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item.price; // Menggunakan properti price dari CameraProduct
    }
    return total;
  }

  // Kosongkan keranjang
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
