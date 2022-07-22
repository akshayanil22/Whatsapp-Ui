import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/custom_listtile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade600,
        onPressed: (){},
        child: Icon(Icons.message),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: const [
          CustomListTile(
            name: 'Bookmark',
            subtitle: 'hai',
            time: '10:07 am',
          ),
          CustomListTile(
            name: 'Ajay',
            subtitle: 'hai',
            time: '09:00 am',
          ),
          CustomListTile(
            name: 'Aneesh',
            subtitle: 'hai',
            time: '08:50 am',
          ),
          CustomListTile(
            name: 'Basil',
            subtitle: 'hai',
            time: '08:40 am',
          ),
          CustomListTile(
            name: 'Dona',
            subtitle: 'hai',
            time: 'yesterday',
          ),
        ],
      ),
    );
  }
}

