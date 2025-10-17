import 'package:flutter_test/flutter_test.dart';
import 'package:flarter/services/models/osm.dart';

void main() {
  group('MyClass', () {
    late Osm testOsm;

    setUp(() {
      // Initialize resources before each test in this group
      testOsm = Osm.fromJson({
        "place_id": 178627564,
        "licence":
            "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
        "osm_id": 23450901,
        "osm_type": "way",
        "lat": "48.5604697",
        "lon": "39.2936469",
        "class": "highway",
        "type": "primary",
        "place_rank": 26,
        "importance": 0.24549928620455394,
        "addresstype": "road",
        "name": "Lenin street",
        "display_name": "Lenin street, Lugansk",
        "boundingbox": ["48.5535272", "48.5673809", "39.2927490", "39.2942313"],
      });
    });

    test('should return correct  double params', () {
      expect(testOsm.lat, 48.5604697);
      expect(testOsm.lon, 39.2936469);
      expect(testOsm.importance, 0.24549928620455394);
    });

    test('should return correct  int params', () {
      expect(testOsm.placeId, 178627564);
      expect(testOsm.osmId, 23450901);
      expect(testOsm.placeRank, 26);
    });

    test('should return correct boundingbox', () {
      expect(testOsm.boundingBox, [
        48.5535272,
        48.5673809,
        39.2927490,
        39.2942313,
      ]);
    });
  });
}
