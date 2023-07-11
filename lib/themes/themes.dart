import 'package:chat_app/themes/colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  //widget themes
  final widgetTheme = ThemeData(
    useMaterial3: true,
  );

  //text styles
  TextStyle headers = const TextStyle(
      fontFamily: 'DMSans',
      fontSize: 25,
      color: white,
      fontWeight: FontWeight.w500);
  TextStyle subheader = const TextStyle(
    fontFamily: 'DMSans',
    fontSize: 12,
    color: grey,
  );
  TextStyle name = const TextStyle(
      fontFamily: 'DMSans',
      fontSize: 18,
      color: black,
      fontWeight: FontWeight.w400);
  TextStyle message = const TextStyle(
    fontFamily: 'DMSans',
    fontSize: 15,
    color: black,
  );
}
