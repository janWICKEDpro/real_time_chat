import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/services/locator.dart';
import 'package:chat_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: purple,
  // ));

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerClasses();
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //dimiss keyboard
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: locator<AppRouter>().routes,
          // routerDelegate: ,
          theme: AppThemes().widgetTheme),
    );
  }
}
