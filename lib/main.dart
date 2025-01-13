import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_camera/provider/cart_provider.dart';
import 'package:rental_camera/models/cart_page.dart';
import 'package:rental_camera/screens/login/login_screen.dart';
import 'package:rental_camera/provider/history_provider.dart';
import 'package:rental_camera/screens/home_screen.dart';
import 'package:rental_camera/screens/camera_detail_page.dart';
import 'package:rental_camera/screens/product_camera.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => HistoryProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental Kamera',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
     routes: {
  '/home': (context) => const HomeScreen(),
  '/cart': (context) => const CartPage(),
  '/login': (context) => const LoginScreen(), // Added for named navigation

      },
      onGenerateRoute: (settings) {
        if (settings.name == '/camera-detail') {
          // Pastikan arguments adalah objek CameraProduct
          final cameraProduct = settings.arguments as CameraProduct;
          return MaterialPageRoute(
            builder: (context) => CameraDetailPage(cameraProduct: cameraProduct),
          );
        }
        return null;
      },
    );
  }
}
