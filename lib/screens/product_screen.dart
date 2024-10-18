import 'package:flutter/material.dart';

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
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
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
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
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
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
