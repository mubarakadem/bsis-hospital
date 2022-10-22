import 'package:flutter/material.dart';

import 'navigation/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      title: "BSIS Hospital",
      theme: ThemeData(
        primaryColor: Colors.green
      ),
    );
  }
}
