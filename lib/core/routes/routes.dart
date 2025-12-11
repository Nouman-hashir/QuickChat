

import 'package:quick_chat/main.dart';
import '../../quick_chat.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: Routes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/detail',
        name: Routes.detail.name,
        builder: (context, state) => const DetailsScreen(),
      ),
      GoRoute(
        path: '/home',
        name: Routes.home.name, 
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/chat',
        name: Routes.chat.name,
        builder: (context, state) => const ChatScreen(),
      ),
    ]
  );
}
