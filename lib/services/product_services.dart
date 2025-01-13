import 'package:rental_camera/screens/product_camera.dart';

class ProductService {
  // Simulasi database menggunakan List
  final List<CameraProduct> _products = [
    // Produk awal
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

  // Create: Menambah produk baru
  void addProduct(CameraProduct product) {
    product.id = DateTime.now().millisecondsSinceEpoch.toString();
    _products.add(product);
  }

  // Read: Mendapatkan semua produk
  List<CameraProduct> getAllProducts() {
    return _products;
  }

  // Read: Mendapatkan produk berdasarkan ID
  CameraProduct? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  // Update: Memperbarui produk
  void updateProduct(CameraProduct updatedProduct) {
    final index = _products.indexWhere((product) => product.id == updatedProduct.id);
    if (index != -1) {
      _products[index] = updatedProduct;
    }
  }

  // Delete: Menghapus produk
  void deleteProduct(String id) {
    _products.removeWhere((product) => product.id == id);
  }
}
