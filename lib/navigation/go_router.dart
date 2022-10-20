import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home/home.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/", builder: (BuildContext context, GoRouterState state) => HomeScreen())
]);