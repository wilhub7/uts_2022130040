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
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
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
            const SizedBox(
              height: 10,
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
                        title: Text(
                          store.nama,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Rp.9.999.999 X 9',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                        leading: Container(
                          height: 40,
                          width: 50,
                          color: Colors.grey,
                          child: Center(
                            child: Image.asset(store.image),
                            // child: Icon(
                            //   Icons.image,
                            //   size: 15,
                            // ),
                          ),
                        ),
                        trailing: Text(
                          store.harga,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,
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
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Text(
                    'Rp 9.999.999',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.left,
                  )),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartScreen(),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('successfully Checkout!'),
                      ),
                    );
                  },
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Checkout',
                      fillColor: Colors.blue,
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
