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
        preferredSize: Size.fromHeight(60),
        child: new AppBar(
          title: new Text(
            "Catálogo",
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontFamily: 'Poppins'),
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              CatalogCard(),
              SizedBox(
                height: 30,
              ),
              CatalogCard(),
              SizedBox(
                height: 30,
              ),
              CatalogCard(),
              SizedBox(
                height: 30,
              ),
              CatalogCard(),
            ],
          ),
        ),
      ),
    );
  }
}
