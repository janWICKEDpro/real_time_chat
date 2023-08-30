import 'package:chat_app/dummy_data/dummy_data.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:chat_app/widgets/message_tile.dart';
import 'package:chat_app/widgets/size_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouped_list/grouped_list.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.direction > 0) {
            context.pop();
          }
        },
        child: Container(
          decoration: const BoxDecoration(gradient: gradient),
        ),
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
            sizedBox(height: 5),
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.direction > 0) {
                  context.pop();
                }
              },
              child: Center(
                child: Container(
                  height: 5,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
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
            Expanded(
              child: GroupedListView<Message, DateTime>(
                reverse: false,
                order: GroupedListOrder.ASC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                padding: const EdgeInsets.all(8),
                elements: messages,
                groupBy: (Message message) => DateTime(message.timeSent!.year,
                    message.timeSent!.month, message.timeSent!.day),
                itemBuilder: (context, element) {
                  return element.receiverId == '2'
                      ? const Align(
                          alignment: Alignment.centerRight,
                          child: MessageTile(),
                        )
                      : const Align(
                          alignment: Alignment.centerLeft,
                          child: MessageTile(),
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
