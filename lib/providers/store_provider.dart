import 'package:flutter/material.dart';
import 'package:uts_2022130040/models/store.dart';

class StoreProvider extends ChangeNotifier {
  final List<Store> _barangs = [
    Store(
      id: 1,
      image: 'assets/bebek.jpeg',
      nama: 'Daging Bebek',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 2,
      image: 'assets/ikan.jpeg',
      nama: 'Daging Ikan',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 3,
      image: 'assets/kambing.jpeg',
      nama: 'Daging Kambing',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 4,
      image: 'assets/babi.jpeg',
      nama: 'Daging Babi',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 5,
      image: 'assets/sapi.jpeg',
      nama: 'Daging Sapi',
      harga: 'Rp.9.999.999',
      jumlah: '1',
      total: 'Rp.9.999.999',
    ),
    Store(
      id: 6,
      image: 'assets/ayam.jpeg',
      nama: 'Daging Ayam',
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
