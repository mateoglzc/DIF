import 'package:flutter/material.dart';

class ContactLine extends StatelessWidget {
  ContactLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.person_sharp),
        Image.asset(
          'face-3.jpg',
          height: 50,
          width: 50,
        ),
        Text("Señora de la alberca"),
      ],
    );
  }
}
