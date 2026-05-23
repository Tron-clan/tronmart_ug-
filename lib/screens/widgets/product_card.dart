import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final dynamic product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    final data = product.data();

    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              data['image'],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              data['name'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text("UGX ${data['price']}"),
        ],
      ),
    );
  }
}
