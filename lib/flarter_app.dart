import 'package:flutter/material.dart';
import 'package:flarter/screens/screens.dart';
import 'package:flarter/theme/theme.dart';
import 'package:flarter/routes.dart';

class flarterApp extends StatelessWidget {
  const flarterApp({super.key});

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
