import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_camera/provider/cart_provider.dart';
import 'package:rental_camera/models/cart_page.dart';
import 'package:rental_camera/screens/login/login_screen.dart';
import 'package:rental_camera/provider/history_provider.dart';
import 'package:rental_camera/screens/home_screen.dart';
import 'package:rental_camera/screens/camera_detail_page.dart'; 

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
  const MyApp({Key? key}) : super(key: key);

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
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/camera-detail') {
      //     final camera = settings.arguments as Map<String, dynamic>;
      //     return MaterialPageRoute(
      //       builder: (context) => CameraDetailPage(camera: camera, product: {},),
      //     );
      //   }
      //   return null;
      // },
    );
  }
}