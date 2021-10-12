import 'package:flutter/material.dart';
import './card.dart';

void main() {
  runApp(DIFApp());
}

// Create App
class DIFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new CatalogPage(),
    );
  }
}

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: new AppBar(
          title: new Text(
            "Catalogo",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CatalogCard(),
            CatalogCard(),
            CatalogCard(),
            CatalogCard(),
            CatalogCard(),
          ],
        ),
      ),
    );
  }
}
