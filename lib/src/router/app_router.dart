import 'package:flutter_base_project/src/features/user/screen/user_form.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';
import '../features/user/screen/users_screen.dart';

enum AppRoute {
  user,
  userForm,
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
    GoRoute(
      path: '/userForm',
      name: AppRoute.userForm.name,
      builder: (context, state) => const UserForm(),
    ),
  ],
);
