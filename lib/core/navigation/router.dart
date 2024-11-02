import 'package:go_router/go_router.dart';
import 'package:jojo/core/navigation/route.dart';
import 'package:jojo/feature/chat/chat_page.dart';
import 'package:jojo/feature/home/home_page.dart';
import 'package:jojo/feature/welcome/welcome_page.dart';
import 'package:jojo/splash_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoute.chat.path,
      builder: (context, state) => const ChatPage(),
    ),
    GoRoute(
      path: AppRoute.welcome.path,
      builder: (context, state) => const WelcomePage(),
    ),
  ],
);
