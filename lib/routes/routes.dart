import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/email_auth_screen.dart';
import 'package:chat_app/screens/email_unverified_screen.dart';
import 'package:chat_app/screens/messaging_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, routerState) => const NoTransitionPage(
        child: MainScreen(),
      ),
    ),
    GoRoute(
      path: '/emailAuth',
      pageBuilder: (context, routerState) => const NoTransitionPage(
        child: EmailAuthScreen(),
      ),
    ),
    GoRoute(
      path: '/emailUnverified',
      pageBuilder: (context, routerState) => const NoTransitionPage(
        child: EmailUnverifiedScreen(),
      ),
    ),
    GoRoute(
        path: '/messaging',
        pageBuilder: (context, routerState) => CustomTransitionPage(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            child: MessagingScreen())),
  ]);
}
