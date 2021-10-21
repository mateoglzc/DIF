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
        // title: Text(
        //   "Service",
        //   style: TextStyle(color: Colors.black),
        // ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.lightBlue[100],
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
        child: Center(
          child:
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(200),
              //   child: Image.asset(
              //     "assets/public-pool.jpg",
              //     height: 400,
              //     width: 400,
              //   ),
              // ),
              ServiceCard(
            service: name,
            description: description,
            openTime: openTime,
            closeTime: closeTime,
            address: address,
            contacts: ["Contact 1", "Contact 2", "Contact 3"],
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[100],
    );
  }
}
