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
      fontSize: 35,
      color: white,
      fontWeight: FontWeight.w600);
  TextStyle subheader = const TextStyle(
    fontFamily: 'DMSans',
    fontSize: 12,
    color: grey,
  );
  TextStyle name = const TextStyle(
      fontFamily: 'DMSans',
      fontSize: 25,
      color: black,
      letterSpacing: 1.1,
      fontWeight: FontWeight.w600);
  TextStyle message = const TextStyle(
    fontFamily: 'DMSans',
    fontSize: 15,
    color: black,
  );
}
