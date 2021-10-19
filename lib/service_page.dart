import 'package:flutter/material.dart';
import 'service-card.dart';

class ServicePage extends StatelessWidget {
  final String name;
  final String description;
  final String closeTime;
  final String openTime;
  final String address;
  const ServicePage({
    this.description = "Default Description",
    this.name = "Default Name",
    this.closeTime = "00:00",
    this.openTime = "00:00",
    this.address = "Service Page",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Service",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/public-pool.jpg'),
            ServiceCard(
              service: name,
              description: description,
              openTime: openTime,
              closeTime: closeTime,
              address: address,
              contacts: ["Contact 1", "Contact 2", "Contact 3"],
            ),
          ],
        ),
      ),
    );
  }
}
