import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String _selectedMethod = '';

  final List<Map<String, String>> _paymentMethods = [
    {'icon': 'images/dana.jpg', 'name': 'DANA'},
    {'icon': 'images/ovo.jpg', 'name': 'OVO'},
    {'icon': 'images/bri.jpg', 'name': 'BRI'},
  ];

  @override
  void initState() {
    super.initState();
    _loadSelectedMethod();
  }

  Future<void> _loadSelectedMethod() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedMethod = prefs.getString('paymentMethod') ?? '';
    });
  }

  Future<void> _saveSelectedMethod(String method) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('paymentMethod', method);
    setState(() {
      _selectedMethod = method;
    });

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$method telah dipilih sebagai metode pembayaran.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        title: const Text('Metode Pembayaran'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _paymentMethods.length,
        itemBuilder: (context, index) {
          final method = _paymentMethods[index];
          return ListTile(
            leading: Image.asset(
              method['icon']!,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            title: Text(method['name']!),
            trailing: _selectedMethod == method['name']
                ? Icon(Icons.check_circle, color: Colors.pink[700])
                : null,
            onTap: () => _saveSelectedMethod(method['name']!),
          );
        },
      ),
    );
  }
}
