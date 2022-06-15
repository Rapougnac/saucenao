# SauceNAO

A module to easily interact with the SauceNAO API.

## Example
```dart
import 'package:saucenao/saucenao.dart';

void main(List<String> args) async {
  final sauceNao = SauceNao(apiKey: 'YOUR_API_KEY');
  final results = await sauceNao.find('https://i.imgur.com/rAQJOIJ.png');
  print(results.results.first);
}
```