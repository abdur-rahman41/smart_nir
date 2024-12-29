import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {


  const SliderCard({super.key, required this.subject, required this.description, required this.personName, required this.location});
  final String subject;
  final String description;
  final String personName;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'), // Replace with your image path
                  radius: 16,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     personName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '11 June, 2023',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
