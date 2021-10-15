import 'package:flutter/material.dart';
import 'service_page.dart';

class CatalogCard extends StatelessWidget {
  final String service;
  final String imagePath;
  const CatalogCard(
      {this.service = "Default Service",
      this.imagePath = "assets/public-pool.jpg"});

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
                  Ink.image(
                    image: AssetImage(imagePath),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
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
                                builder: (context) => ServicePage()));
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