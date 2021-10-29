import 'package:flutter/material.dart';
import 'package:jamar_app/constants/color.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  String productName;
  int ancho;
  int largo;

  ProductScreen(this.productName, this.ancho, this.largo);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String dropdownValue = 'Color';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => print('hi on menu icon'),
            );
          },
        ),
        title: Text(widget.productName),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.shopping_basket_outlined),
            onPressed: () => print('hi on icon action'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://decoracion2.com/opendeco/wp-content/uploads/2015/12/Mesa-de-comedor-2.jpg",
              width: Get.width,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "ProductName",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: Get.height * 0.2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: SingleChildScrollView(
                    child: Text(
                        "dkjasghksdhkjafhaksjfhskjasfhskfjsahfkjashfkasjhfksjfhaskjfhsakjfhasfkjashjkfhaskfjashfkjshfjk")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
              child: Row(
                children: [
                  Text(
                    "Ancho:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  ${widget.ancho}cm",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Largo:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  ${widget.largo}cm",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: "Cantidad"),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.45,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: kPrimaryColor),
                        underline: Container(
                          height: 2,
                          color: kPrimaryColor,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Color', 'Rojo', 'Azul', 'Verde', 'Amarillo']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                      width: Get.width * 0.35,
                      height: 50,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Añadir al carrito",
                            style: TextStyle(color: kPrimaryColor),
                          ),
                        ),
                      )),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: Get.width * 0.35,
                    height: 50,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Comprar"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
