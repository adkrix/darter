import 'package:dio/dio.dart';
import 'package:flarter/services/models/osm.dart';
import 'package:flutter/cupertino.dart';

final dio = Dio();
// response = await dio.get('/test', queryParameters: {'id': 12, 'name': 'dio'});
// response = await dio.post('/test', data: {'id': 12, 'name': 'dio'});

const baseUrl = 'https://nominatim.openstreetmap.org/search';

class ApiService {
  Future<List<Osm>> getItems([String? q = 'Columb street']) async {
    try {
      final response = await dio.get<List<dynamic>>(
        baseUrl,
        queryParameters: {'format': 'json', 'q': '$q'},
        options: Options(
          headers: {'User-Agent': 'MyCustomApp/1.0.0 (iOS; iPhone)'},
        ),
      );
      debugPrint('${response.requestOptions.uri}');
      debugPrint('${response.statusCode}');

      if (response.statusCode == 200) {
        List<Osm> unis = (response.data ?? [])
            .map((item) => Osm.fromJson(item as Map<String, dynamic>))
            .toList();
        return unis;
      } else {
        throw Exception('Load data error');
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('Request error');
    }
  }
}
