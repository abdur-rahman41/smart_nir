import 'package:flutter/material.dart';

class Tenants extends StatefulWidget {
  const Tenants({super.key});

  @override
  State<Tenants> createState() => _TenantsState();
}

class _TenantsState extends State<Tenants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
          title: Row(
            children: [
              CircleAvatar(child: Icon(Icons.person)),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    'Rafiqul Islam',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        body:Center(
          child: Text('Tenants Screen'),
        )

    );
  }
}
