import 'package:go_router/go_router.dart';

import '../app.dart';
import '../features/user/screen/users_screen.dart';

enum AppRoute {
  user,
}

final router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.user.name,
      builder: (context, state) => const UserScreen(),
    ),
  ],
);
