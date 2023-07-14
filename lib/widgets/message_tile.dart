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
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello how are you so what is the time hdgsgrdsfsgfsddgsdtkuugitdetreyet utrertaetrdukuyn9yor",
              style: AppThemes().message,
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "6:37",
                style: AppThemes().message,
              ),
            )
          ],
        ),
      ),
    );
  }
}
