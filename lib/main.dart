import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    _tabController = TabController(length: 4, vsync: this);
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
                backgroundColor: Colors.green,
                bottom: TabBar(
                  tabs: const <Tab>[
                    Tab(
                      icon: Icon(Icons.camera_alt_outlined),
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
            children: <Widget>[
              Center(
                child: Text('0'),
              ),
              Center(
                child: Text('1'),
              ),Center(
                child: Text('2'),
              ),Center(
                child: Text('3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
