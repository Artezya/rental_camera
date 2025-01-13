import 'package:flutter/material.dart';

class CameraProduct {
  final String id;
  String name;
  String description;
  int price;
  int stock;
  String category;
  double rating;
  String imageUrl;
  List<Map<String, String>>? specifications;

  CameraProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
    required this.rating,
    required this.imageUrl,
    this.specifications,
  });
}

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final List<CameraProduct> cameras = [
    CameraProduct(
      id: '1',
      name: 'Canon EOS R5',
      description: 'Mirrorless camera with 45 MP resolution and 8K video recording.',
      price: 250000,
      stock: 10,
      category: 'Mirrorless',
      rating: 4.8,
      imageUrl: 'https://swift-thumbor.sirclocdn.com/unsafe/1000x1000/filters:format(webp):quality(75)/admin.focusnusantara.com/media/catalog/product/cache/417d5822b01094047ca5b50bfdc0690a/c/c/ccn38472-canon-eos-r5-mark-ii-mirrorless-camera-with-24-105mm-f4-lens-web_d1.jpg',
      specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 102400'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],

    ),
    CameraProduct(
      id: '2',
      name: 'Sony A7 III',
      description: 'Popular mirrorless camera with excellent dynamic range.',
      price: 200000,
      stock: 15,
      category: 'Mirrorless',
      rating: 4.7,
      imageUrl: 'https://i.ebayimg.com/images/g/xLcAAOSw3WdkU-ha/s-l1200.jpg',
      specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
      ],
    ),
    CameraProduct(
      id: '3',
      name: 'Nikon D850',
      description: 'High-resolution DSLR with 45.7 MP and robust build quality.',
      price: 180000,
      stock: 12,
      category: 'DSLR',
      rating: 4.9,
      imageUrl: 'https://bursakameraprofesional.co.id/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/9/3/93171.jpg',
      specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],

    ),
    CameraProduct(
      id: '4',
      name: 'GoPro Hero 10',
      description: 'Action camera with 5.3K video recording and advanced stabilization.',
      price: 150000,
      stock: 20,
      category: 'Action Cam',
      rating: 4.6,
      imageUrl: 'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/10/22/06005f2f-ada2-4dd9-a40e-9f12cfa37466.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
    CameraProduct(
      id: '5',
      name: 'Nikon D3500',
      description: 'Entry-level DSLR perfect for beginners.',
      price: 150000,
      stock: 18,
      category: 'DSLR',
      rating: 4.6,
      imageUrl: 'https://imaging.nikon.com/imaging/lineup/dslr/d3500/img/product_01_01.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
    CameraProduct(
      id: '6',
      name: 'Canon EOS 3000D',
      description: 'Affordable DSLR with good image quality for starters.',
      price: 150000,
      stock: 25,
      category: 'DSLR',
      rating: 4.6,
      imageUrl: 'https://bursakameraprofesional.co.id/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/4/1/41ekv0uqkjl.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
    CameraProduct(
      id: '7',
      name: 'Canon EOS 850D',
      description: 'Advanced DSLR with Dual Pixel autofocus.',
      price: 150000,
      stock: 15,
      category: 'DSLR',
      rating: 4.6,
      imageUrl: 'https://img2.beritasatu.com/cache/investor/960x620-3/1596822223.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
    CameraProduct(
      id: '8',
      name: 'Nikon D3400',
      description: 'Lightweight DSLR with SnapBridge connectivity.',
      price: 150000,
      stock: 20,
      category: 'DSLR',
      rating: 4.6,
      imageUrl: 'https://images.tokopedia.net/img/cache/700/OJWluG/2023/1/2/8d08c5ca-f41f-4f91-8a0d-3ca3805456d7.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
   
    CameraProduct(
      id: '10',
      name: 'Akaso V50X',
      description: 'Affordable action camera with 4K video recording.',
      price: 150000,
      stock: 30,
      category: 'Action Cam',
      rating: 4.6,
      imageUrl: 'https://specialist.co.id/cdn/shop/files/1659454712_IMG_1797278_2048x2048.jpg',
      specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
    CameraProduct(
      id: '11',
      name: 'GoPro Hero 8',
      description: 'Popular action camera with excellent stabilization.',
      price: 150000,
      stock: 20,
      category: 'Action Cam',
      rating: 4.6,
      imageUrl: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//96/MTA-4851744/gopro_gopro_hero_8_action_cam_-_black_-garansi_resmi_tam-_full05_0dwje83.jpg',
         specifications: [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
    ),
  ];

  void _logout() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  void _editCamera(CameraProduct camera) {
    showDialog(
      context: context,
      builder: (context) {
        final TextEditingController nameController = TextEditingController(text: camera.name);
        final TextEditingController priceController =
            TextEditingController(text: camera.price.toString());
        final TextEditingController stockController =
            TextEditingController(text: camera.stock.toString());

        return AlertDialog(
          title: const Text('Edit Camera'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Price'),
              ),
              TextField(
                controller: stockController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Stock'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  camera.name = nameController.text;
                  camera.price = int.tryParse(priceController.text) ?? camera.price;
                  camera.stock = int.tryParse(stockController.text) ?? camera.stock;
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _deleteCamera(CameraProduct camera) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Camera'),
          content: Text('Are you sure you want to delete ${camera.name}?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cameras.remove(camera);
                });
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _addCamera() {
  showDialog(
    context: context,
    builder: (context) {
      final TextEditingController nameController = TextEditingController();
      final TextEditingController priceController = TextEditingController();
      final TextEditingController stockController = TextEditingController();
      final TextEditingController imageUrlController = TextEditingController();

      return AlertDialog(
        title: const Text('Add Camera'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Price'),
              ),
              TextField(
                controller: stockController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Stock'),
              ),
              TextField(
                controller: imageUrlController,
                decoration: const InputDecoration(labelText: 'Image URL'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cameras.add(
                  CameraProduct(
                    id: DateTime.now().toString(),
                    name: nameController.text,
                    description: 'Description here',
                    price: int.tryParse(priceController.text) ?? 0,
                    stock: int.tryParse(stockController.text) ?? 0,
                    category: 'Default',
                    rating: 0.0,
                    imageUrl: imageUrlController.text.isNotEmpty
                        ? imageUrlController.text
                        : 'https://via.placeholder.com/150',
                  ),
                );
              });
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      );
    },
  );
}


  Widget _buildCameraCard(CameraProduct camera) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              camera.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              camera.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Category: ${camera.category}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Price: ${camera.price} / day',
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Stock: ${camera.stock}',
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    Text(camera.rating.toString()),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () => _editCamera(camera),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteCamera(camera),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.pinkAccent[700],
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCamera,
        child: const Icon(Icons.add),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65, // Adjusted to prevent overflow
        ),
        itemCount: cameras.length,
        itemBuilder: (context, index) {
          final camera = cameras[index];
          return _buildCameraCard(camera);
        },
      ),
    );
  }
}
