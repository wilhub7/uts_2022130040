import 'package:flutter/material.dart';
import 'package:uts_2022130040/models/store.dart';

class StoreProvider extends ChangeNotifier {
  final List<Store> _barangs = [];
  List<Store> get barangs => _barangs;
  void addStore(Store store) {
    _barangs.add(store);
    notifyListeners();
  }

  void editStore(Store store) {
    final index = _barangs.indexWhere((element) => element.id == store.id);
    _barangs[index] = store;
    notifyListeners();
  }
}
