import 'package:flutter/material.dart';
import 'package:rental_camera/screens/camera_detail_page.dart';
import 'package:rental_camera/screens/product_camera.dart';


class CameraGrid extends StatefulWidget {
  final String category;
  final List<CameraProduct>? filteredProducts;

  const CameraGrid({
    Key? key,
    required this.category,
    this.filteredProducts, required List filteredCameras, required Null Function(dynamic cameraId) onWishlistTap,
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
      id: '9',
      name: 'SONY HDR-AS50R/BCE35',
      description: 'Compact action camera with SteadyShot stabilization.',
      price: 150000,
      stock: 25,
      category: 'Action Cam',
      rating: 4.6,
      imageUrl: 'https://salt.tikicdn.com/media/catalog/product/6/0/6006213110004-(2).u425.d20160526.t113333.jpg',
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
