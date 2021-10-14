import 'package:flutter/material.dart';
import 'service-card.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

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
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset('assets/public-pool.jpg'),
            ServiceCard(
              contacts: ["Contact 1", "Contact 2", "Contact 3"],
            ),
          ],
        ),
      ),
    );
  }
}
