// http://universities.hipolabs.com/search?country=Japan&limit=10&offset=100

class Uni {
  final String name;
  final String code;
  final String country;
  final String? stateProvince;
  final List<String> webPages;
  final List<String> domains;

  Uni({
    required this.name,
    required this.code,
    required this.country,
    this.stateProvince,
    required this.webPages,
    required this.domains,
  });

  factory Uni.fromJson(Map<String, dynamic> json) {
    return Uni(
      name: json['name'],
      code: json['alpha_two_code'],
      country: json['country'],
      stateProvince: json['state-province'],
      webPages: json['web_pages'] ?? [] as List<String>,
      domains: json['domains'] ?? [],
    );
  }
}

final Uni uu = Uni.fromJson({
  "name": "Aichi  University",
  "alpha_two_code": "JP",
  "country": "Japan",
  "web_pages": ["http://www.abu.ac.jp/"],
  "state-province": null,
  "domains": ["abu.ac.jp"],
});
