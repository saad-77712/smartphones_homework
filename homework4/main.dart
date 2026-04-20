import 'package:flutter/material.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
 
  final List<Map<String, String>> products = [
    {
      "name": "iPhone 15",
      "brand": "Apple",
      "desc": "The latest iPhone from Apple, featuring an advanced camera system and ultra-fast performance.",
      "price": "3500 SAR",
      "image": "images/sss.png.jpg"
    },
     {
      "name": "Samsung Galaxy Z Fold7",
      "brand": "Samsung",
      "desc": "The latest Samsung foldable phone, combining a large screen with a sophisticated modern design.",
      "price": "5000 SAR",
      "image": "images/m.webp"
    },
    {
      "name": "Laptop",
      "brand": "HP",
      "desc": "An HP laptop providing a smart performance experience powered by Artificial Intelligence.",
      "price": "3200 SAR",
      "image": "images/ii.jpg"
    },
    {
      "name": "Tablet",
      "brand": "Apple",
      "desc": "An Apple tablet featuring a stunning display and very powerful performance for designers and users.",
      "price": "2900 SAR",
      "image": "images/oo.webp"
    },
     {
      "name": "pen drive",
      "brand": "HP",
      "desc": "A 32GB portable flash drive for fast and easy file transfers.",
      "price": "70 SAR",
      "image": "images/ww.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // مكان الصورة
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey[300],
                    child: Image.network(products[index]['image']!, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 15),
                  // تفاصيل المنتج (الاسم، الماركة، الوصف، السعر)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(products[index]['name']!, 
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("Brand: ${products[index]['brand']!}", 
                            style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                        Text(products[index]['desc']!, 
                            style: const TextStyle(color: Colors.grey)),
                        const SizedBox(height: 5),
                        Text("Price: ${products[index]['price']!}", 
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
