import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/services/locator.dart';
import 'package:chat_app/themes/colors.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: purple,
  ));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerClasses();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //dimiss keyboard
      },
      child: MaterialApp.router(
          routerConfig: locator<AppRouter>().routes,
          // routerDelegate: ,
          theme: AppThemes().widgetTheme),
    );
  }
}
