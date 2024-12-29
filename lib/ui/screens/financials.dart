import 'package:flutter/material.dart';

class Financials extends StatefulWidget {
  const Financials({super.key});

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
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
          child: Text('Financials Screen'),
        )

    );
  }
}
