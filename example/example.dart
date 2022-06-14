import 'package:saucenao/saucenao.dart';

void main(List<String> args) async {
  final sauceNao = SauceNao(apiKey: 'YOUR_API_KEY');
  final results = await sauceNao.find('https://i.imgur.com/rAQJOIJ.png');
  print(results.results.first);
  // {
  //  anidbId: 1411,
  //  anilistId: 101921,
  //  estimatedTime: "00:07:17 / 00:24:00",
  //  externalUrls: [
  //    "https://anidb.net/anime/14111" ,
  //    "https://myanimelist.net/anime/37999/",
  //    "https://anilist.co/anime/101921/"
  //  ],
  //  episode: "07",
  //  source: "Kaguya-sama wa Kokurasetai: Tensai-tachi no Ren`ai Zunousen",
  //  year: "2019-2019",
  // }
}