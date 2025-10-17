import '../constants.dart';

class Paths {
  final String src;
  final String dest;
  final String root;

  Paths({required this.src, required this.dest, required this.root});

  String foolSrc() {
    return '$root/$src';
  }

  String foolDest() {
    return '$root/$dest';
  }
}

List<Paths> listPaths(String root, String src, String dest) {
  List<String> srcList = src.split('.');
  List<String> destList = dest.split('.');

  int index = 0;

  return srcList.fold([], (List<Paths> acc, String srcVal) {
    final destVal = destList[index];

    acc.add(Paths(src: srcVal, dest: destVal, root: root));

    root = '$root/$destVal';
    index++;

    return acc;
  });
}
