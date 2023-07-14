import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/widgets/search_bar.dart';
import 'package:chat_app/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: purple,
            child: Center(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, ind) => MessageTile()))));
  }
}
