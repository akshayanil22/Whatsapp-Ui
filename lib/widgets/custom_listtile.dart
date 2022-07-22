import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final bool isCall;
  final IconData icon;
  const CustomListTile(
      {Key? key,
        required this.name,
        required this.subtitle,
        this.time='',
        this.isCall=false,
        this.icon=Icons.call,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
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
        trailing:isCall?Icon(icon,color: Colors.teal.shade600,) :Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
