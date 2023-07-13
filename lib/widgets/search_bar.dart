import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: grey),
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
        Opacity(
          opacity: 0.8,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: grey,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: white,
                )),
          ),
        )
      ],
    );
  }
}
