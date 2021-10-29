import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => print('hi on menu icon'),
            );
          },
        ), 
        title: Text('Tienda'),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.shopping_basket_outlined),
            onPressed: () => print('hi on icon action'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(),
      )
    );
  }
}