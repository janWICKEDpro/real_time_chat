import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.1,
            maxWidth: MediaQuery.of(context).size.width * 0.5),
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), color: grey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello kajdlkjadlfkjd fakldjf aldkfj ",
              style: AppThemes().message,
              //textAlign: TextAlign.justify,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "6:37",
                  style: AppThemes().message,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
