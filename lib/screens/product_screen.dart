import 'package:flutter/material.dart';
import 'package:uts_2022130040/models/store.dart';
import 'package:uts_2022130040/screens/cart_screen.dart';
import 'package:uts_2022130040/providers/store_provider.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
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
            color: Colors.pink,
            padding: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Text(
              'Product',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            color: Colors.pink,
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: Text(
              'Rp.9.999.999',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
          // const SizedBox(
          //   height: 10,

          // ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pink,
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
        color: Colors.green,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 0, 16),
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
              flex: 2,
              child: Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 10,
                    )),
              ),
            ),
            Expanded(
              flex: 3,
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
                        content: Text('successfully Add!'),
                      ),
                    );
                  },
                  child: TextFormField(
                    textAlign: TextAlign.center,
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
      ),
    );
  }
}
