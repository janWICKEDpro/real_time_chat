import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:chat_app/widgets/size_box.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1.0,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * 0.964,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const Positioned(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Positioned(
                        left: 35,
                        top: 35,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: purple,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )),
                        ))
                  ],
                ),
                sizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Xavier Peloski",
                      style: AppThemes().name.copyWith(fontSize: 17),
                    ),
                    Text("13:57", style: AppThemes().subheader)
                  ],
                ),
                sizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Thank you, this is approved",
                      style: AppThemes().message,
                    ),
                    const Icon(
                      Icons.check,
                      color: purple,
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
