import 'dart:io';

import 'format_red.dart';

Future<void> runScript(
  String cmd, {
  List<String> args = const [],
  String? dir,
}) async {
  print(Directory.current.path);

  var result = await Process.run(
    cmd,
    args,
    runInShell: true,
    workingDirectory: dir ?? './',
  );
  if (result.exitCode == 0) {
    print(result.stdout); // Prints the standard output
  } else {
    print(
      'Command failed with exit code: ${formatRed(result.exitCode.toString())}',
    );
    print(formatRed(result.stderr)); // Prints the standard error
  }
}
