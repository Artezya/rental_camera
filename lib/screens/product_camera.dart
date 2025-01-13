class CameraProduct {
  String? id;
  String name;
  String description;
  double price;
  int stock;
  String category;
  double rating;
  String imageUrl;
  List<Map<String, String>>? specifications; // Tambahkan properti ini

  CameraProduct({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.category,
    required this.rating,
    required this.imageUrl,
    this.specifications, // Tambahkan ke konstruktor
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
      'specifications': specifications,
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
      specifications: map['specifications'] != null
          ? List<Map<String, String>>.from(
              (map['specifications'] as List).map((e) => Map<String, String>.from(e)))
          : null,
    );
  }
}
