import 'package:flutter/material.dart';
import 'package:jamar_app/constants/color.dart';
import 'package:jamar_app/screens/carrito_screen.dart';
import 'package:jamar_app/screens/compra_screen.dart';
import 'package:jamar_app/screens/home_screen.dart';
import 'package:jamar_app/screens/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda Online Jamar',
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (BuildContext context) => HomeScreen(),
        'ProductScreen': (BuildContext context) => ProductScreen(),
        'CarritoScreen': (BuildContext context) => CarritoScreen(),
        'CompraScreen': (BuildContext context) => CompraScreen(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.red,
      ),
    );
  }
}

