import 'package:chat_app/dummy_data/dummy_data.dart';
import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradient),
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.91,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: white,
        ),
        child: Column(
          children: [
            ...List.generate(messages.length, (index) {
              if (messages[index].receiverId == '2') {
                return Align(
                  alignment: Alignment.centerRight,
                  child: MessageTile(),
                );
              }
              return Align(
                alignment: Alignment.centerLeft,
                child: MessageTile(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
