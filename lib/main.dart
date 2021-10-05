import 'package:flutter/material.dart';

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
          leading: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: new Text("Hello!"),
    );
  }
}
