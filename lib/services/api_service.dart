import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';

  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');
    final response =
        await http.get(url); //서버에 요청을 처리하고 응답 주는걸 기다림, 응답을 response 변수에 담고
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
        //final toon = WebtoonModel.fromJson(webtoon);
        //print(toon.title);
      }
      return webtoonInstances;
    }

    throw Error();
  }
}
