import 'package:flutter/material.dart';

class BuildVisitorCard extends StatelessWidget {
  const BuildVisitorCard({super.key, required this.name, required this.type, required this.time, required this.borderColor, required this.textColor});
  final String name;
  final String type;
  final String time;
  final Color borderColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(10),
        color: borderColor.withOpacity(0.05),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: borderColor.withOpacity(0.2),
                child: Icon(
                  Icons.person,
                  color: borderColor,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold, color: textColor),
                  ),
                ],
              ),
              Spacer(),
              if (time.isNotEmpty)
                Icon(
                  Icons.circle,
                  size: 10,
                  color: borderColor,
                ),
            ],
          ),
          if (time.isNotEmpty) ...[
            SizedBox(height: 10),
            Text(
              time,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ],
      ),
    );
  }
}
