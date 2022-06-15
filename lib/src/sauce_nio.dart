import 'dart:convert';
import 'dart:io';

import 'package:saucenao/src/errors/sauce_nao_exeption.dart';
import 'package:saucenao/src/models/sauce_nao_results.dart';

class SauceNao {
  /// The api key for the sauce nao api
  /// You can get one by registring on sauce nao.
  final String apiKey;

  final Uri _baseUri = Uri.parse('https://saucenao.com/search.php');

  final HttpClient _httpClient = HttpClient();

  /// I hope you're sure about what you're doing.
  /// See docs [here](https://saucenao.com/user.php?page=search-api)
  late final Map<String, dynamic>? requestParams;

  SauceNao({required this.apiKey, Map<String, dynamic>? requestParams}) {
    this.requestParams = (requestParams ?? {})
      ..addAll(
        {
          'api_key': apiKey,
          'output_type': '2', // json
        },
      );
  }

  /// Searches for the image on sauce nao.
  /// Returns a [SauceNaoResults]
  /// If no results are found, returns null.
  /// If an error occurs, throws an [SauceNaoException].
  /// [requestParams] is here to override the default request params.
  Future<SauceNaoResults> find(String imageUrl,
      [Map<String, dynamic>? requestParams]) async {
    final uri = _baseUri.replace(
        queryParameters: (requestParams ?? this.requestParams!)
          ..addAll({'url': imageUrl}));

    final request = await _httpClient.getUrl(uri);
    final response = await request.close();
    final body = await response.transform(utf8.decoder).join();

    if (response.statusCode != 200) {
      throw SauceNaoException(
        'Error while searching for image.\n'
        'Status code: ${response.statusCode}\n'
        'Body: $body',
      );
    }

    final json = jsonDecode(body);
    _httpClient.close();
    return SauceNaoResults(json);
  }

  @override
  String toString() => 'SauceNao(apiKey: $apiKey, requestParams: $requestParams)';
}
