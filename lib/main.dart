import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/call_screen.dart';
import 'package:whatsapp_ui/Screens/status_screen.dart';
import 'Screens/chat_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext ctx, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('WhatsApp'),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.teal.shade800,
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  // IconButton(
                  //     onPressed: () {}, icon: const Icon(Icons.more_vert))
                  PopupMenuButton<int>(
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                        const PopupMenuItem<int>(
                          value: 0,
                          child: Text('New Group'),
                        ),const PopupMenuItem<int>(
                          value: 1,
                          child: Text('New broadcast'),
                        ),const PopupMenuItem<int>(
                          value: 2,
                          child: Text('Linked device'),
                        ),const PopupMenuItem<int>(
                          value: 3,
                          child: Text('Starred messages'),
                        ),const PopupMenuItem<int>(
                          value: 4,
                          child: Text('Payments'),
                        ),const PopupMenuItem<int>(
                          value: 5,
                          child: Text('Settings'),
                        ),

                      ]),
                ],
                bottom: TabBar(
                  tabs: const [
                    SizedBox(
                      width: 100,
                      child: Tab(
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                    Tab(text: 'Chats'),
                    Tab(text: 'Status'),
                    Tab(text: 'Call'),
                  ],
                  controller: _tabController,
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              Center(
                child: Text('Open Camera'),
              ),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
