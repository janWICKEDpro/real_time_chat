import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/email_auth_screen.dart';
import 'package:chat_app/screens/email_unverified_screen.dart';
import 'package:chat_app/screens/messaging_screen.dart';
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
      path: '/messagingScreen',
      pageBuilder: (context, routerState) => const NoTransitionPage(
        child: MessagingScreen(),
      ),
    ),
  ]);
}
