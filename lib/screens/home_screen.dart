import 'package:flutter/material.dart';
import 'package:jamar_app/constants/color.dart';

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
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.all(16),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(
                  children: <Widget>[
                    Image.network('https://cdn.shopify.com/s/files/1/0519/2695/8235/files/1-BANNER-29-OCT-1920x900.jpg?v=1635505550')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.bed_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height:4),
                      Container(
                        child: Text('Dormitorio', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.chair_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height:4),
                      Container(
                        child: Text('Salas', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.deck_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height:4),
                      Container(
                        child: Text('Mesas', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.desktop_mac_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height:4),
                      Container(
                        child: Text('Escritorio', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.bedroom_baby_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Text('Infantil', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Productos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}