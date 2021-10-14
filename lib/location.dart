import 'package:flutter/material.dart';

class LocationLine extends StatelessWidget {
  final String address;
  LocationLine({this.address = "Default Address"});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_rounded),
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
        Text(address),
      ],
    );
  }
}
