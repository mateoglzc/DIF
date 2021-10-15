import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DIFApp());
}

// Create App
class DIFApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("You have an error: ${snapshot.error.toString()}");
            return Text("Something went wrong!");
          } else if (snapshot.hasData) {
            return CatalogPage();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class CatalogPage extends StatelessWidget {
  final DatabaseReference db =
      FirebaseDatabase.instance.reference().child("Services");

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
              Text(db.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
