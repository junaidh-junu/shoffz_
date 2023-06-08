import 'package:flutter/material.dart';

class Product {
  final String title;
  final String imageUrl;
  final double price;
  bool isFavorite;

  Product(
      {required this.title,
      required this.imageUrl,
      required this.price,
      this.isFavorite = false});
}

class favourites extends StatefulWidget {
  const favourites({super.key});

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
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
            trailing: IconButton(
              icon: Icon(
                products[index].isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: products[index].isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  products[index].isFavorite = !products[index].isFavorite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
