// lib/screens/search_screen.dart
import 'package:flutter/material.dart';
import '../models/camera_grid.dart'; // Import CameraGrid

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  // Data kamera dengan atribut lengkap
  final List<Map<String, dynamic>> _allCameras = [
    {
        'name': 'Canon EOS R5',
        'price': '250.000',
        'rating': 4.8,
        'category': 'Mirrorless',
        'image': 'https://swift-thumbor.sirclocdn.com/unsafe/1000x1000/filters:format(webp):quality(75)/admin.focusnusantara.com/media/catalog/product/cache/417d5822b01094047ca5b50bfdc0690a/c/c/ccn38472-canon-eos-r5-mark-ii-mirrorless-camera-with-24-105mm-f4-lens-web_d1.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 102400'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Sony A7 III',
        'price': '200.000',
        'rating': 4.7,
        'category': 'Mirrorless',
        'image': 'https://i.ebayimg.com/images/g/xLcAAOSw3WdkU-ha/s-l1200.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Nikon D850',
        'price': '180.000',
        'rating': 4.9,
        'category': 'DSLR',
        'image': 'https://bursakameraprofesional.co.id/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/9/3/93171.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'GoPro Hero 10',
        'price': '150.000',
        'rating': 4.6,
        'category': 'Action Cam',
        'image': 'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/10/22/06005f2f-ada2-4dd9-a40e-9f12cfa37466.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Nikon D3500',
        'price': '150.000',
        'rating': 4.6,
        'category': 'DSLR',
        'image': 'https://imaging.nikon.com/imaging/lineup/dslr/d3500/img/product_01_01.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Canon EOS 3000D',
        'price': '150.000',
        'rating': 4.6,
        'category': 'DSLR',
        'image': 'https://bursakameraprofesional.co.id/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/4/1/41ekv0uqkjl.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Canon EOS 850D',
        'price': '150.000',
        'rating': 4.6,
        'category': 'DSLR',
        'image': 'https://img2.beritasatu.com/cache/investor/960x620-3/1596822223.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Nikon D3400',
        'price': '150.000',
        'rating': 4.6,
        'category': 'DSLR',
        'image': 'https://images.tokopedia.net/img/cache/700/OJWluG/2023/1/2/8d08c5ca-f41f-4f91-8a0d-3ca3805456d7.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'SONY HDR-AS50R/BCE35',
        'price': '150.000',
        'rating': 4.6,
        'category': 'Action Cam',
        'image': 'https://salt.tikicdn.com/media/catalog/product/6/0/6006213110004-(2).u425.d20160526.t113333.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'Akaso V50X',
        'price': '150.000',
        'rating': 4.6,
        'category': 'Action Cam',
        'image': 'https://specialist.co.id/cdn/shop/files/1659454712_IMG_1797278_2048x2048.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      },
      {
        'name': 'GoPro Hero 8',
        'price': '150.000',
        'rating': 4.6,
        'category': 'Action Cam',
        'image': 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//96/MTA-4851744/gopro_gopro_hero_8_action_cam_-_black_-garansi_resmi_tam-_full05_0dwje83.jpg',
        'specifications': [
      {'Resolusi': '45 MP'},
      {'ISO': '100 - 51200'},
      {'Shutter Speed': '1/8000 - 30 detik'},
      {'Video': '8K @ 30 fps'},
      {'Layar': '3.2 inch, Touchscreen'},
    ],
      }

  ];

  // List kamera yang difilter berdasarkan pencarian
  List<Map<String, dynamic>> _filteredCameras = [];

  @override
  void initState() {
    super.initState();
    _filteredCameras = _allCameras; // Inisialisasi dengan semua kamera
  }

  void _filterCameras(String query) {
    setState(() {
      _isSearching = query.isNotEmpty;
      if (query.isEmpty) {
        _filteredCameras = _allCameras;
      } else {
        _filteredCameras = _allCameras
            .where((camera) => camera['name'].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _navigateToCameraGrid() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraGrid(
          category: 'Semua',
          filteredCameras: _filteredCameras, onWishlistTap: (cameraId) {  },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: TextField(
          controller: _searchController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Cari kamera...',
            border: InputBorder.none,
          ),
          onChanged: _filterCameras,
          onSubmitted: (_) => _navigateToCameraGrid(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isSearching) // Menampilkan "Hasil Pencarian" hanya saat pencarian digunakan
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hasil Pencarian',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
          Expanded(
            child: _filteredCameras.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, size: 100, color: Colors.grey[300]),
                        const SizedBox(height: 16),
                        Text(
                          'Tidak ada kamera yang ditemukan',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: _filteredCameras.length,
                    itemBuilder: (context, index) {
                      final camera = _filteredCameras[index];
                      return ListTile(
                        leading: Image.network(
                          camera['image'],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                        ),
                        title: Text(camera['name']),
                        subtitle: Text('Rp ${camera['price']}/hari • ${camera['category']}'),
                        onTap: _navigateToCameraGrid,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
