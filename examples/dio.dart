import 'dart:convert';
import 'package:dio/dio.dart';

class MyObject {
  final int id;
  final String name;

  MyObject({required this.id, required this.name});

  factory MyObject.fromJson(Map<String, dynamic> json) {
    return MyObject(id: json['id'] as int, name: json['name'] as String);
  }
}

Future<List<MyObject>> fetchMyObjects() async {
  final dio = Dio();
  final response = await dio.get('https://api.example.com/myobjects');

  if (response.statusCode == 200) {
    // Decode the JSON string to a List<dynamic>
    final List<dynamic> jsonList = json.decode(response.data.toString());

    // Map the List<dynamic> to a List<MyObject>
    return jsonList.map((json) => MyObject.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load objects');
  }
}
