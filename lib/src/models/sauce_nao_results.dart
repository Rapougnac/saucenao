import 'package:saucenao/src/models/header.dart';
import 'package:saucenao/src/models/headers.dart';
import 'package:saucenao/src/models/sauce_nao_result.dart';

class SauceNaoResults {
  /// The headers of the results.
  late final Headers? headers;

  /// The returned results.
  late final List<SauceNaoResult> results;

  SauceNaoResults(Map<String, dynamic> rawData) {
    if (rawData['header'] != null) {
      headers = Headers(rawData['header']);
    } else {
      headers = null;
    }
    results = [
      if (rawData['results'] != null)
        for (final result in rawData['results'])
          SauceNaoResult(
            Header(result['header']),
            result['data'],
          ),
    ];
  }

  @override
  String toString() => 'SauceNaoResults(headers: $headers, results: $results)';
}
