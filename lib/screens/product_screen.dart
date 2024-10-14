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
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Product A',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 3,
              child: Padding(padding: EdgeInsets.all(16), child: Text('')))
        ],
      ),
    );
  }
}
