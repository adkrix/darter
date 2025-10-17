void main(List<String> arguments) {
  final domain = arguments[0].toLowerCase();
  print(domain);

  RegExp exp = RegExp(r"^[a-z]+\.[a-z]+\.[a-z]+$");

  Iterable<Match> matches = exp.allMatches(domain);

  print(matches.length);

  for (var key in matches) {
    print(domain.substring(key.start, key.end));
  }
}
