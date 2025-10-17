import 'dart:io';

Future<bool> renameBundleId(String newDomain) async {
  var result = await Process.run('flutter', [
    'pub',
    'run',
    'rename',
    '--bundleId',
    newDomain,
  ], runInShell: true);

  if (result.exitCode == 0) {
    print('Standard Output:');
    print(result.stdout);
    return true;
  }
  print('Error Code: ${result.exitCode}');
  print('Standard Error:');
  print(result.stderr);
  return false;
}
