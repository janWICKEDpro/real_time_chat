import 'package:chat_app/dummy_data/dummy_data.dart';
import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:chat_app/widgets/message_tile.dart';
import 'package:chat_app/widgets/size_box.dart';
import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: gradient),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: purple,
                      ),
                      sizedBox(width: 5),
                      Text(
                        "Xavi Simons",
                        style: AppThemes().name,
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                    ),
                  )
                ],
              ),
            ),
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
