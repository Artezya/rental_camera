import 'package:flutter/material.dart';
import 'package:rental_camera/screens/camera_detail_page.dart';

class CameraProduct {
  String? id;
  String name;
  String description;
  double price;
  int stock;
  String category;
  double rating;
  String imageUrl;

  CameraProduct({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
    required this.rating,
    required this.imageUrl,
  });

  // Convert Product to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'category': category,
      'rating': rating,
      'imageUrl': imageUrl,
    };
  }

  // Create Product from Map
  factory CameraProduct.fromMap(Map<String, dynamic> map) {
    return CameraProduct(
      id: map['id'],
      name: map['name'],
      description: map['description'] ?? '',
      price: map['price'],
      stock: map['stock'],
      category: map['category'],
      rating: map['rating'],
      imageUrl: map['imageUrl'],
    );
  }
}

class CameraGrid extends StatefulWidget {
  final String category;
  final List<CameraProduct>? filteredProducts;

  const CameraGrid({
    Key? key,
    required this.category,
    this.filteredProducts, required List filteredCameras,
  }) : super(key: key);

  @override
  _CameraGridState createState() => _CameraGridState();
}

class _CameraGridState extends State<CameraGrid> {
  final List<CameraProduct> _wishlist = [];

  // Default product list
  final List<CameraProduct> _allProducts = [
    CameraProduct(
      id: '1',
      name: 'Canon EOS R5',
      description: 'Mirrorless camera with 45 MP resolution and 8K video recording.',
      price: 250000,
      stock: 10,
      category: 'Mirrorless',
      rating: 4.8,
      imageUrl: 'https://swift-thumbor.sirclocdn.com/unsafe/1000x1000/filters:format(webp):quality(75)/admin.focusnusantara.com/media/catalog/product/cache/417d5822b01094047ca5b50bfdc0690a/c/c/ccn38472-canon-eos-r5-mark-ii-mirrorless-camera-with-24-105mm-f4-lens-web_d1.jpg',
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
    ),
    // Tambahkan produk lainnya sesuai dengan kebutuhan
  ];

  List<CameraProduct> get filteredProducts {
    final products = widget.filteredProducts ?? _allProducts;

    // Filter berdasarkan kategori
    return products.where((product) {
      return widget.category == 'Semua' || product.category == widget.category;
    }).toList();
  }

  void _toggleWishlist(CameraProduct product) {
    setState(() {
      if (_wishlist.contains(product)) {
        _wishlist.remove(product);
      } else {
        _wishlist.add(product);
      }
    });
  }

  bool _isInWishlist(CameraProduct product) {
    return _wishlist.contains(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 40,
        title: widget.filteredProducts == null
            ? null
            : const Text(
                "HASIL PENCARIAN",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
      body: filteredProducts.isEmpty
          ? const Center(child: Text("Tidak ada hasil untuk kategori ini"))
          : GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return _buildProductCard(filteredProducts[index], context);
              },
            ),
    );
  }

  Widget _buildProductCard(CameraProduct product, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CameraDetailPage(cameraProduct: product,),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network(
                    product.imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: Icon(
                      _isInWishlist(product) ? Icons.favorite : Icons.favorite_border,
                      color: Colors.pink[700],
                    ),
                    onPressed: () => _toggleWishlist(product),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.category,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        product.rating.toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Rp ${product.price}/hari',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[700],
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CameraDetailPage(cameraProduct: product,),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.pink[700],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Sewa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
