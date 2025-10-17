bool checkDomain(String domain) {
  RegExp exp = RegExp(r"^[a-z0-9]{2,}\.[a-z0-9]{2,}\.[a-z0-9]{2,}$");

  Iterable<Match> matches = exp.allMatches(domain);

  return matches.length == 1;
}
