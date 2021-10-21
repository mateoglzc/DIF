import 'package:flutter/material.dart';
import 'contact.dart';
import 'location.dart';

class ServiceCard extends StatelessWidget {
  final String description;
  final String service;
  final String openTime;
  final String closeTime;
  final String address;
  final List<String> contacts;

  ServiceCard({
    this.service = "Default Service",
    this.description = "Default Description",
    this.openTime = "00:00",
    this.closeTime = "00:00",
    this.address = "Default Address",
    this.contacts = const ["Default Contact"],
  });

  List<Widget> _buildUserGroups(BuildContext context, List<String> contacts) {
    List<ContactLine> userGroup = [];

    for (var i = 0; i < contacts.length; i++) {
      userGroup.add(ContactLine(
        contact: contacts[i],
      ));
    }

    return userGroup;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blue[300],
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.blue[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset("assets/public-pool.jpg"),
              ),
              Text(
                service,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Open from $openTime to $closeTime",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
              SizedBox(height: 10),
              LocationLine(
                address: address,
              ),
              SizedBox(height: 10),
              ..._buildUserGroups(context, contacts),
            ],
          ),
        ),
      ),
    );
  }
}
