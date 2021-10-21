import 'dart:async';
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

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final DatabaseReference _db = FirebaseDatabase.instance.reference();
  late StreamSubscription _servicesStream;
  List<String> _servicesId = [];
  Map<String, dynamic> _services = new Map<String, dynamic>();
  Column serviceCards = Column(
    children: [
      SizedBox(
        height: 10,
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _servicesStream = _db.child("Services").onValue.listen((event) {
      final s = event.snapshot.value;
      setState(() {
        _servicesId = s.keys.toList();
        _services = s;
      });
    });
  }

  void addServiceCards() {
    // print(_services[_servicesId[]]['image']);
    setState(() {
      for (var i = 0; i < _services.length; i++) {
        serviceCards.children.add(CatalogCard(
          service: _services[_servicesId[i]]['name'],
          imagePath: _services[_servicesId[i]]['image'],
          description: _services[_servicesId[i]]['description'],
          openTIme: _services[_servicesId[i]]['openTime'],
          closeTIme: _services[_servicesId[i]]['closeTime'],
          address: _services[_servicesId[i]]['address'],
          phoneNumber: _services[_servicesId[i]]['phoneNumber'],
          openDays: _services[_servicesId[i]]['openDays'],
        ));
        serviceCards.children.add(SizedBox(
          height: 10,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    addServiceCards();
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: new AppBar(
          elevation: 0,
          title: new Text(
            "Catálogo",
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontFamily: 'Poppins'),
          ),
          // centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: serviceCards,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  void deactivate() {
    _servicesStream.cancel();
    super.deactivate();
  }
}
