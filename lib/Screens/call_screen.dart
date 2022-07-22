import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/custom_listtile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade600,
        onPressed: (){},
        child: Icon(Icons.add_call),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: const [
          CustomListTile(
            name: 'Bookmark',
            subtitle: 'yesterday,10:07 am',
            isCall: true,
          ),
          CustomListTile(
            name: 'Ajay',
            subtitle: 'yesterday,09:00 am',
            isCall: true,
          ),
          CustomListTile(
            name: 'Aneesh',
            subtitle: 'yesterday,08:50 am',
            isCall: true,
            icon: Icons.videocam_sharp,
          ),
          CustomListTile(
            name: 'Basil',
            subtitle: 'yesterday,08:40 am',
            isCall: true,
          ),
          CustomListTile(
            name: 'Dona',
            subtitle: 'yesterday,08:20 am',
            isCall: true,
            icon: Icons.videocam_sharp,
          ),
        ],
      ),
    );
  }
}
