import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:chat_app/widgets/search_bar.dart';
import 'package:chat_app/widgets/size_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: gradient),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.more_horiz)))
                    ],
                  ),
                  sizedBox(height: 10),
                  Text(
                    "Write to Your Friends and Colleagues",
                    style: AppThemes().headers,
                  ),
                  sizedBox(height: 15),
                  const MySearchBar(),
                  const Expanded(
                      child: SizedBox(
                    child: Scrollbar(
                      child: SingleChildScrollView(),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
