import 'dart:io';
import 'package:pubspec_parse/pubspec_parse.dart';

class PackInfo {
  String name;
  String version;
  PackInfo({required this.name, required this.version});
}

Future<PackInfo> packInfo() async {
  final fName = '${Directory.current.path}/pubspec.yaml';
  print(fName);

  if (await File(fName).exists()) {}

  final pubspecFile = File(fName);
  final pubspecContent = pubspecFile.readAsStringSync();
  final Pubspec info = Pubspec.parse(pubspecContent);

  return PackInfo(name: info.name, version: info.version.toString());
}
