import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  static String baseUrl = "http://";

  static dynamic _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

  static Future<http.Response> get(String path) async {
    final response = await http.get(Uri.parse('$baseUrl$path'));
    return _handleResponse(response);
  }

  static Future<http.Response> post(
      String path, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl$path'),
      body: json.encode(data),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  static Future<http.Response> put(
      String path, Map<String, dynamic> data) async {
    final response = await http.put(
      Uri.parse('$baseUrl$path'),
      body: json.encode(data),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  static Future<http.Response> delete(String path) async {
    final response = await http.delete(Uri.parse('$baseUrl$path'));
    return _handleResponse(response);
  }
}
