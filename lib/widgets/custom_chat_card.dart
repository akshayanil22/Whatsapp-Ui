import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  final bool isSend;
  final String chatText;
  const CustomChatCard({
    Key? key,
    this.isSend = true,
    required this.chatText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            isSend?const Spacer():const SizedBox(),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(8),
              decoration: isSend?const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))):const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(chatText,softWrap: true),

            ),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
