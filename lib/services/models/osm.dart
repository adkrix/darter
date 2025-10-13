// https://nominatim.openstreetmap.org/search?format=json&q=Lenin%20st

class Osm {
  final int placeId;
  final String licence;
  final String osmType;
  final int osmId;
  final double lat;
  final double lon;
  final String classOf;
  final String type;
  final int placeRank;
  final double importance;
  final String addressType;
  final String name;
  final String displayName;
  final List<double> boundingBox;

  Osm({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.lat,
    required this.lon,
    required this.classOf,
    required this.type,
    required this.placeRank,
    required this.importance,
    required this.addressType,
    required this.name,
    required this.displayName,
    required this.boundingBox,
  });

  factory Osm.fromJson(Map<String, dynamic> json) {
    final bb = List<String>.from(json['boundingbox'] as List);
    final boundingBox = bb.map((str) => double.parse(str)).toList();
    return Osm(
      placeId: json['place_id'],
      licence: json['licence'] ?? '',
      osmType: json['osm_type'] ?? '',
      osmId: json['osm_id'],
      lat: double.parse(json['lat']),
      lon: double.parse(json['lon']),
      classOf: json['class'] ?? '',
      type: json['type'] ?? '',
      placeRank: json['place_rank'],
      importance: json['importance'] as double,
      addressType: json['address_type'] ?? '',
      name: json['name'] ?? '',
      displayName: json['display_name'] ?? '',
      boundingBox: boundingBox,
    );
  }
}

final Osm uu = Osm.fromJson({
  "place_id": 178627564,
  "licence":
      "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
  "osm_type": "way",
  "osm_id": 23450901,
  "lat": "48.5604697",
  "lon": "39.2936469",
  "class": "highway",
  "type": "primary",
  "place_rank": 26,
  "importance": 0.24549928620455394,
  "addresstype": "road",
  "name": "Lenin street",
  "display_name": "Lenin street, Top 3th kilometre, Lugansk, Artemovsk area",
  "boundingbox": ["48.5535272", "48.5673809", "39.2927490", "39.2942313"],
});
