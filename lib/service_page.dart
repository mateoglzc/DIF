import 'package:flutter/material.dart';
import 'service-card.dart';

class ServicePage extends StatelessWidget {
  final String name;
  final String description;
  final String closeTime;
  final String openTime;
  final String address;
  final String imagePath;
  final String phoneNumber;
  final String openDays;
  const ServicePage({
    this.description = "Default Description",
    this.name = "Default Name",
    this.closeTime = "00:00",
    this.openTime = "00:00",
    this.address = "Service Page",
    this.imagePath = "assets/public-pool.jpg",
    this.phoneNumber = "55 0000 0000",
    this.openDays = "Lunes a Viernes",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: ServiceCard(
            service: name,
            description: description,
            openTime: openTime,
            closeTime: closeTime,
            address: address,
            openDays: openDays,
            phoneNumber: phoneNumber,
            imagePath: imagePath,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[100],
    );
  }
}
