import 'package:flutter/material.dart';

class ContactLine extends StatelessWidget {
  final String contact;
  ContactLine({this.contact = "Default Name"});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.person_sharp),
        // ClipOval(
        //   child: Image.asset(
        //     'face-2.jpg',
        //     height: 120,
        //     width: 120,
        //   ),
        // ),
        SizedBox(
          width: 10,
        ),
        Text(contact),
      ],
    );
  }
}
