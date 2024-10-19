import 'package:flutter/material.dart';
import 'package:uts_2022130040/screens/cart_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
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
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Text(
              'Product A',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: Text(
              'Rp.9.999.999',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: Text(
                'lorem ipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id maximus elit. Suspendisse id massa eu odio suscipit porta vitae quis purus. Aenean mattis diam in ligula rutrum, quis dapibus est feugiat. Phasellus congue nec diam et pulvinar. In auctor arcu nec metus viverra, nec eleifend magna aliquam. Etiam varius diam ante, in vulputate ligula tincidunt sed. Donec aliquam vel enim ut maximus. Aliquam lorem tortor, finibus a consequat vel, eleifend et risus. Aenean nec mauris consequat, venenatis est quis, aliquam urna. Integer nec ligula ex. Etiam vitae semper libero.',
                style: TextStyle(
                  fontSize: 10,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 30, 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove,
                    size: 10,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 30, 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 50, 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(50, 16, 16, 16),
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
                        content: Text('successfully Add!'),
                      ),
                    );
                  },
                  child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Add to cart',
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
        // child: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(icon: Icon(Icons.remove), label: ''),
        //     BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        //     BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        //   ],
        // ),
      ),
    );
  }
}
