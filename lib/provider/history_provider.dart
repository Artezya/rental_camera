// file: history_provider.dart

import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  final List<Map<String, String>> _historyItems = [];

  List<Map<String, String>> get historyItems => _historyItems;

  void addHistoryItem(Map<String, String> item) {
    _historyItems.add(item);
    notifyListeners();
  }
}
