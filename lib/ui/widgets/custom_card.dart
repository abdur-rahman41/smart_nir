import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.icon, required this.lebel});
  final IconData icon;
  final String lebel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, size: 28, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(lebel, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );;
  }
}
