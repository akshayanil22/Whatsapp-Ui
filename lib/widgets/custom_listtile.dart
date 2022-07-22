import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;

  const CustomListTile(
      {Key? key,
        required this.name,
        required this.subtitle,
        this.time=''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
