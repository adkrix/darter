import 'run_script.dart';

Future<void> zipDir(String path, String name) async {
  await runScript(
    'zip',
    args: ['-r', '../../_deploy/$name.zip', './'],
    dir: path,
  );
}

Future<void> tgzDir(String path, String name) async {
  await runScript(
    'tar',
    args: ['-czvf', '../../_deploy/$name.tar.gz', './'],
    dir: path,
  );
}
