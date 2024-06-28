import 'package:birth_registration/app/modules/create/view/create_view.dart';
import 'package:birth_registration/app/modules/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppRoutes{
 static GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'create',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateView();
          },
        ),
      ],
    ),
  ],
);
}
