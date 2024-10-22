import 'package:flutter/material.dart';
import 'package:uts_2022130040/models/store.dart';

class StoreProvider extends ChangeNotifier {
  final List<Store> _barangs = [
    Store(
      id: 1,
      image: '',
      nama: 'Product A',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 2,
      image: '',
      nama: 'Product B',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 3,
      image: '',
      nama: 'Product C',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 4,
      image: '',
      nama: 'Product D',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 5,
      image: '',
      nama: 'Product E',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 6,
      image: '',
      nama: 'Product F',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
  ];

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
