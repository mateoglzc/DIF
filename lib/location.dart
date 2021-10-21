import 'package:flutter/material.dart';

class LocationLine extends StatelessWidget {
  final String address;
  LocationLine({this.address = "Default Address"});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_rounded),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(address),
        ),
      ],
    );
  }
}
