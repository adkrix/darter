import 'package:flutter/material.dart';
import 'package:darter/screens/screens.dart';
import 'package:darter/theme/theme.dart';
import 'package:darter/routes.dart';

class DarterApp extends StatelessWidget {
  const DarterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routes: routes,
      initialRoute: initialRoute,
    );
  }
}
