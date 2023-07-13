import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';

class ReceivedMessageTile extends StatelessWidget {
  const ReceivedMessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: grey),
      child: Text(
        "Hello how are you so what is the time",
        style: AppThemes().message,
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
