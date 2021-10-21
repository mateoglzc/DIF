import 'package:flutter/material.dart';

class ContactLine extends StatelessWidget {
  final String contact;
  ContactLine({
    this.contact = "Default Name",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.person_sharp),
        SizedBox(
          width: 10,
        ),
        Text(contact),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
