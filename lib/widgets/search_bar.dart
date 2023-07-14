import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(255, 255, 255, 0.2)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextField(
                onChanged: (text) {},
                onSubmitted: (text) {},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: AppThemes().message.copyWith(color: white)),
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(255, 255, 255, 0.2),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: white,
              )),
        )
      ],
    );
  }
}
