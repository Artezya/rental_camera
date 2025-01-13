import 'package:flutter/foundation.dart';
import 'package:rental_camera/screens/product_camera.dart';


class HistoryProvider with ChangeNotifier {
  final List<CameraProduct> _historyItems = [];

  List<CameraProduct> get historyItems => _historyItems;

  void addHistory(List<CameraProduct> items) {
    _historyItems.addAll(items);
    notifyListeners();
  }

  void clearHistory() {
    _historyItems.clear();
    notifyListeners();
  }

  void addHistoryItem(Map<String, String> map) {}
}
