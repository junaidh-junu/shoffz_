import 'package:flutter/material.dart';

class Product {
  final String title;
  final String imageUrl;
  final double price;

  Product({required this.title, required this.imageUrl, required this.price});
}

class myads extends StatefulWidget {
  const myads({super.key});

  @override
  State<myads> createState() => _myadsState();
}

class _myadsState extends State<myads> {
  final List<Product> products = [
    Product(
      title: "Product 1",
      imageUrl: "https://picsum.photos/seed/picsum/200/300",
      price: 19.99,
    ),
    Product(
      title: "Product 2",
      imageUrl: "https://picsum.photos/seed/picsum/200/300",
      price: 29.99,
    ),
    Product(
      title: "Product 3",
      imageUrl: "https://picsum.photos/seed/picsum/200/300",
      price: 39.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].title),
            subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
            onTap: () {
              // Handle onTap event for the product item
            },
          );
        },
      ),
    );
  }
}
