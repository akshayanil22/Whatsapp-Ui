import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final bool isCall;
  final bool isStatus;
  final bool isMyStatus;
  final IconData icon;
  const CustomListTile(
      {Key? key,
        required this.name,
        required this.subtitle,
        this.time='',
        this.isCall=false,
        this.isStatus=false,
        this.isMyStatus=false,
        this.icon=Icons.call,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Stack(
          children: [
            Container(
              height: 50,
                width: 50,
                decoration:isStatus?BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.teal.shade600,width: 2),
                ):null,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
              ),
            ),
            isMyStatus?Positioned(
              bottom: -1,
              right: -1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal.shade600,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white,)
                ),
                child: Icon(Icons.add,size: 20,),
              ),
            ):SizedBox(),
          ],
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
