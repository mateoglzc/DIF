import 'package:flutter/material.dart';
import 'service_page.dart';

class CatalogCard extends StatelessWidget {
  final String service;
  final String imagePath;
  final String description;
  final String openTIme;
  final String closeTIme;
  final String address;
  const CatalogCard({
    this.service = "Default Service",
    this.imagePath = "assets/public-pool.jpg",
    this.description = "Default Description",
    this.openTIme = "00:00",
    this.closeTIme = "00:00",
    this.address = "Av. Default 1",
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueGrey[200],
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(imagePath),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage(
                                      name: service,
                                      description: description,
                                      closeTime: closeTIme,
                                      openTime: openTIme,
                                      address: address,
                                    )));
                      },
                      child: Text(
                        service,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Poppins'),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
