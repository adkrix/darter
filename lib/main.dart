import 'package:flutter/material.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';
import 'darter_app.dart';

void main() {
  configureApp();

  runApp(const DarterApp());
}
