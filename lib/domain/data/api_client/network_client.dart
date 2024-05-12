import 'dart:convert';
import 'dart:io';

import 'package:masta_flutta/configurations/configurations.dart';
import 'package:masta_flutta/domain/data/api_client/api_client_exeption.dart';

class NetworkClient {
  final _client = HttpClient();

  Uri _makeUri(String path, [Map<String, dynamic>? parameters]) {
    final uri = Uri.parse('${Configurations.host}$path');
    if (parameters != null) {
      return uri.replace(queryParameters: parameters);
    } else {
      return uri;
    }
  }

  Future<T> get<T>(
    String path,
    T Function(dynamic json) parser, [
    Map<String, dynamic>? parameters,
  ]) async {
    final url = _makeUri(path, parameters);
    try {
      final request = await _client.getUrl(url);
      final response = await request.close();
      String responseBody = await response.transform(utf8.decoder).join();
      Map<String, dynamic> jsonData = json.decode(responseBody);

      final result = parser(jsonData);
      return result;
    } on SocketException {
      throw ApiClientExeption(ApiClientExeptionType.network);
    } catch (_) {
      throw ApiClientExeption(ApiClientExeptionType.other);
    }
  }
}
