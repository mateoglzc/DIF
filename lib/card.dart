import 'package:flutter/material.dart';
import 'service_page.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.black12,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1633749130853-2f2057865bf5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80'),
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
                        "Hiking",
                        style: TextStyle(color: Colors.black, fontSize: 24),
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
