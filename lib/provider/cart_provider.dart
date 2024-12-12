// file: cart_provider.dart
import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _cartItems = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;

  void addToCart(Map<String, dynamic> item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> item) {
    _cartItems.remove(item);
    notifyListeners();
  }

double getTotalPrice() {
  double total = 0;
  for (var item in _cartItems) {
    // Konversi price dari String ke double jika diperlukan
    double itemPrice = item['price'] is String ? double.parse(item['price']) : item['price'];
    total += itemPrice;
  }
  return total;
}


  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
