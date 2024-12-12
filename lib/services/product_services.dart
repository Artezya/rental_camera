import 'package:rental_camera/models/camera_grid.dart';

class ProductService {
  // Simulasi database menggunakan List
  final List<CameraProduct> _products = [
    // Contoh produk awal
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
