import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_2022130040/screens/home_screen.dart';
import 'package:uts_2022130040/providers/store_provider.dart';
import 'package:uts_2022130040/screens/product_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homescreen(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: Consumer<StoreProvider>(
                builder: (context, provider, child) {
                  if (provider.barangs.isEmpty) {
                    return const Center(
                      child: Text('No Cart'),
                    );
                  }

                  return ListView.builder(
                    itemCount: provider.barangs.length,
                    itemBuilder: (context, index) {
                      final store = provider.barangs[index];
                      return ListTile(
                        title: Text(store.nama),
                        subtitle: Text(store.harga),
                        leading: CircleAvatar(
                          child: Text(store.image[0].toUpperCase()),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
