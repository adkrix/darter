import 'package:args/args.dart';

const dict = {
  'help': 'Show help. Cancels other options.',
  'canceled': 'Other options were cancelled.',
  'clear': 'Clear console.',
  'format': 'Format code.',

  "rename": 'Rename project with positional name (like com.domain.app)',
  'run': 'Run development.',
  'build': 'Build project.',
  'deploy': 'Deploy project.',
  'web': 'Web platform.',
  'android': 'Android platform.',
  'linux': 'Linux platform.',
};

Map<String, dynamic>? parseArguments(List<String> arguments) {
  Map<String, dynamic> opts = {};

  final parser = ArgParser()
    // actions
    ..addFlag('help', abbr: 'h', help: dict['help'], defaultsTo: false)
    ..addFlag('clear', abbr: 'c', help: dict['clear'], defaultsTo: false)
    ..addFlag('format', abbr: 'f', help: dict['format'], defaultsTo: false)
    ..addFlag('rename', abbr: 'R', help: dict['rename'], defaultsTo: false)
    ..addFlag('run', abbr: 'r', help: dict['run'], defaultsTo: false)
    ..addFlag('build', abbr: 'b', help: dict['build'], defaultsTo: false)
    ..addFlag('deploy', abbr: 'd', help: dict['deploy'], defaultsTo: false)
    // platforms
    ..addFlag('web', abbr: 'W', help: dict['web'], defaultsTo: false)
    ..addFlag('android', abbr: 'A', help: dict['android'], defaultsTo: false)
    ..addFlag('linux', abbr: 'L', help: dict['linux'], defaultsTo: false)
  // ..addFlag('ios', abbr: 'I', help: 'Ios platform.', defaultsTo: false)
  // ..addFlag('macos', abbr: 'M', help: 'MacOs platform.', defaultsTo: false)
  ;

  try {
    final argResults = parser.parse(arguments);

    opts['help'] = argResults['help'] as bool;
    opts['clear'] = argResults['clear'] as bool;
    opts['format'] = argResults['format'] as bool;

    opts['rename'] = argResults['rename'] as bool;
    opts['run'] = argResults['run'] as bool;
    opts['build'] = argResults['build'] as bool;
    opts['deploy'] = argResults['deploy'] as bool;

    // platforms
    opts['web'] = argResults['web'] as bool;
    opts['android'] = argResults['android'] as bool;
    opts['linux'] = argResults['linux'] as bool;

    if (opts['rename'] && argResults.rest.isNotEmpty) {
      opts['domain'] = argResults.rest[0].toString().toLowerCase();
    }

    if (opts['clear']) {
      print("\x1B[2J\x1B[0;0H");
    }

    if (opts['help']) {
      print('Help. ${dict['canceled']}');
      print('Usage:');
      print(parser.usage);

      return null;
    }

    return opts;
  } on FormatException catch (e) {
    print(e.message);
    print('Usage:');
    print(parser.usage);

    return null;
  }
}
