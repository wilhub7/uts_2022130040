import 'package:flutter/material.dart';
import 'package:uts_2022130040/screens/cart_screen.dart';
import 'package:uts_2022130040/screens/login_screen.dart';
import 'package:uts_2022130040/screens/product_screen.dart';
import 'package:provider/provider.dart';
import 'package:uts_2022130040/providers/store_provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final storeProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
      // backgroundColor: colors,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Our products',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                children: List.generate(
                  6,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.grey,
                              child: Center(
                                child: Icon(
                                  Icons.image,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Text('storeProvider.barangs[index].nama'),
                              alignment: Alignment.centerLeft,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 75,
            right: 10,
            child: FloatingActionButton(
              shape:
                  CircleBorder(side: BorderSide(width: 3, color: Colors.black)),
              backgroundColor: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text('Store Menu'),
            ),
            ListTile(
              title: const Text('HomeScreen'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTap(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homescreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('LoginScreen'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTap(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('ProductScreen'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTap(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('CartScreen'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTap(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
