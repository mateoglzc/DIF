import 'package:flutter/material.dart';
import 'contact.dart';

class ServiceCard extends StatelessWidget {
  ServiceCard({Key? key}) : super(key: key);

  String description =
      "blah blah blah blah blah blah blah blah blah blah blah blah blah blahj blahj blab lblh baldj l h lkjd k kiadkl  hellklo my  name is matt and i like chocolate hello im dead";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueGrey[200],
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Public Pool',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Open from 11am to 8pm",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
              SizedBox(height: 20),
              ContactLine(),
            ],
          ),
        ),
      ),
    );
  }
}
