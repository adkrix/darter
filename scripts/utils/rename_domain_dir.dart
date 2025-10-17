import 'dart:io';
import '../constants.dart';
import 'list_paths.dart';

Future<void> renameDomainDir(String newDomain) async {
  // try {} on FileSystemException catch (e) {}

  final list = listPaths(rootDir, srcDomain, newDomain);

  for (var pth in list) {
    print('${pth.foolSrc()} ---> ${pth.foolDest()}\n\n');

    final originalDirectory = Directory(pth.foolSrc());
    if (await originalDirectory.exists()) {
      print('Rename directory: ${originalDirectory.path}');
      originalDirectory.rename(pth.foolDest());
    } else {
      print('No directory: ${originalDirectory.path}');
      return;
    }
  }
}
