import 'dart:io';

import 'change_domain.dart';
import 'utils/arc.dart';
import 'utils/utils.dart';

void main(List<String> arguments) async {
  Map<String, dynamic>? opts = parseArguments(arguments);

  if (opts == null) {
    return;
  }

  final bool noPlatform = !opts['web'] && !opts['android'] && !opts['linux'];
  print(opts);

  if (opts['rename']) {
    if (checkDomain(opts['domain'])) {
      print('Project will be renamed to \n--> ${opts['domain']}\n y/N');
      String? input = stdin.readLineSync() ?? '';

      if (input.toLowerCase() == 'y') {
        changeDomain(opts['domain']);
      }
    } else {
      print('Wrong domain ${opts['domain']}');
    }
    print(dict['canceled']);
    return;
  }

  if (opts['format']) {
    await runScript('dart', args: ['format', '.']);
  }
  // run, build, deploy, web, android, linux

  if (opts['run']) {
    await runScript('dart', args: ['format', '.']);

    print(dict['canceled']);
    return;
  }

  if (opts['build']) {
    var info = await packInfo();
    print('${info.name}:${info.version}');

    if (opts['web'] || noPlatform) {
      print('flutter clean');
      // await runScript('flutter', args: ['clean']);
      print('flutter build web');
      // await runScript('flutter', args: ['build', 'web']);

      await zipDir( 'build/web', '${info.name}-web');
      await tgzDir( 'build/web', '${info.name}-web');
    }

    //-------------------

    if (opts['android'] || noPlatform) {
      await runScript('flutter', args: ['clean']);
      await runScript(
        'flutter',
        args: [
          'build',
          'apk',
          '--release',
          '--target-platform',
          'android-arm64',
        ],
      );
    }

    //-------------------

    if (opts['linux'] || noPlatform) {
      await runScript('flutter', args: ['clean']);
      await runScript(
        'flutter',
        args: ['build', 'linux', '--release', '--target-platform', 'linux-x64'],
      );
      await runScript(
        'zip',
        args: [
          '-j',
          '-r',
          './_deploy/${info.name}-linux.zip',
          './build/linux/x64/release/bundle',
        ],
      );
    }
  }
}
