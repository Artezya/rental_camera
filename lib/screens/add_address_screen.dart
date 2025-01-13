// lib/screens/add_address_screen.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  String _savedAddress = 'Belum ada alamat yang disimpan.';
  String _savedCity = '';

  Future<void> _saveAddress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('address', _addressController.text);
    await prefs.setString('city', _cityController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Alamat berhasil disimpan!')),
    );

    _addressController.clear();
    _cityController.clear();
    _loadSavedAddress();
  }

  Future<void> _loadSavedAddress() async {
    final prefs = await SharedPreferences.getInstance();
    final address = prefs.getString('address') ?? 'Belum ada alamat yang disimpan.';
    final city = prefs.getString('city') ?? '';

    setState(() {
      _savedAddress = address;
      _savedCity = city;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadSavedAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Alamat'),
        backgroundColor: Colors.pink[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(
                labelText: 'Alamat Lengkap',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(
                labelText: 'Kota',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveAddress,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 254, 176, 176),
              ),
              child: const Text('Simpan Alamat'),
            ),
            const SizedBox(height: 32),
            const Text(
              'Alamat Tersimpan:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            if (_savedAddress != 'Belum ada alamat yang disimpan.') ...[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                color: Colors.pink[50],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.pink,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Alamat Lengkap',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[700],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _savedAddress,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Divider(height: 32, color: Colors.grey),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_city,
                            color: Colors.pink,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Kota',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[700],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _savedCity,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ] else
              const Text(
                'Belum ada alamat yang disimpan.',
                style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _addressController.dispose();
    _cityController.dispose();
    super.dispose();
  }
}
