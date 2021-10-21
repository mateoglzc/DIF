import 'package:flutter/material.dart';
import 'service_page.dart';

class CatalogCard extends StatelessWidget {
  final String service;
  final String imagePath;
  final String description;
  final String openTIme;
  final String closeTIme;
  final String address;
  final String phoneNumber;
  final String openDays;
  const CatalogCard({
    this.service = "Default Service",
    this.imagePath = "assets/public-pool.jpg",
    this.description = "Default Description",
    this.openTIme = "00:00",
    this.closeTIme = "00:00",
    this.address = "Av. Default 1",
    this.phoneNumber = "55 0000 0000",
    this.openDays = "Lunes a Viernes",
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.lightBlue[100],
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                      image: AssetImage(
                    imagePath,
                  )),
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
                                      imagePath: imagePath,
                                      phoneNumber: phoneNumber,
                                      openDays: openDays,
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
