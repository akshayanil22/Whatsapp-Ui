import 'package:flutter/material.dart';

import '../widgets/custom_chat_card.dart';

class ChatDisplayScreen extends StatelessWidget {
  final String name;
  final String subtitle;
  ChatDisplayScreen({Key? key,required this.name,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: Colors.teal.shade800,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: AppBar().preferredSize.height,
            color: Colors.teal.shade800,
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                const CircleAvatar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: const[
                CustomChatCard(chatText: 'hai',),
                CustomChatCard(chatText: 'hai',isSend: false),
                CustomChatCard(chatText: 'How are you',),
                CustomChatCard(chatText: 'fine,\n How are you',isSend: false),
                CustomChatCard(chatText: 'ya, fine',),
                CustomChatCard(chatText: 'Where are you Working at?',isSend: false),
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      TextField(
                        maxLines: 20,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon:
                                const Icon(Icons.emoji_emotions_outlined),
                            prefixIconColor: Colors.grey,
                            hintText: 'Type a message',
                            suffixIcon: SizedBox(
                              width: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.attach_file,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    backgroundColor: Colors.teal.shade800,
                    child: Icon(Icons.keyboard_voice)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

