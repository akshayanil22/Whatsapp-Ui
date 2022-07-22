import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/custom_listtile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10),
      children: const [
      CustomListTile(
      name: 'My status',
      subtitle: 'Tap to add status update',),
        Text('       Recent updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
        CustomListTile(
          name: 'Bookmark',
          subtitle: '7 minutes ago',
        ),CustomListTile(
          name: 'Basil',
          subtitle: '12 minutes ago',
        ),CustomListTile(
          name: 'Aneesh',
          subtitle: '13 minutes ago',
        ),CustomListTile(
          name: 'Dona',
          subtitle: '30 minutes ago',
        ),CustomListTile(
          name: 'Ajay',
          subtitle: '45 minutes ago',
        ),Text('       Viewed updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
        CustomListTile(
          name: 'Bookmark',
          subtitle: '7 minutes ago',
        ),CustomListTile(
          name: 'Basil',
          subtitle: '12 minutes ago',
        ),CustomListTile(
          name: 'Aneesh',
          subtitle: '13 minutes ago',
        ),CustomListTile(
          name: 'Dona',
          subtitle: '30 minutes ago',
        ),CustomListTile(
          name: 'Ajay',
          subtitle: '45 minutes ago',
        ),

      ],
    );
  }
}

