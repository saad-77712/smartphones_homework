import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product Listing'),
          backgroundColor: Colors.blue,
        ),
        body: const ProductList(),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, dynamic>> products = [
      {'name': 'iPhone', 'desc': 'iPhone is the stylist phone ever', 'price': '1000', 'color': Colors.purple},
      {'name': 'Pixel', 'desc': 'Pixel is the most featureful phone ever', 'price': '800', 'color': Colors.blueAccent},
      {'name': 'Laptop', 'desc': 'Laptop is most productive development tool', 'price': '2000', 'color': Colors.green},
      {'name': 'Tablet', 'desc': 'Tablet is the most useful device ever for meeting', 'price': '1500', 'color': Colors.yellow[700]},
      {'name': 'Pendrive', 'desc': 'iPhone is the stylist phone ever', 'price': '100', 'color': Colors.deepOrange},
    ];

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
             
              Container(
                width: 120,
                height: 100,
                color: products[index]['color'],
                alignment: Alignment.center,
                child: Text(
                  products[index]['name'].toString().toLowerCase(),
                  style: const TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ),
             
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        products[index]['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        products[index]['desc'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Price: ${products[index]['price']}',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
