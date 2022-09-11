import 'dart:convert';

import 'package:cassette/src/core/data_provider/IPodcastSearchProvider.dart';
import 'package:cassette/src/models/search_models/podcast_search_result.dart';
import 'package:http/http.dart' as http;
import 'package:cassette/src/core/constants/constants.dart';

class PodcastSearchAPIProvider implements IPodcastSearchProvider {
  final http.Client httpClient;

  const PodcastSearchAPIProvider({
    required this.httpClient,
  });

  @override
  Future<List<PodcastSearchResult>> search(String query) async {
    try {
      final response = await httpClient
          .get(Uri.parse('${Constants.iTunesSearchUrl}&term=$query'));
      List<dynamic> responseList = json.decode(response.body)["results"];

      return List<PodcastSearchResult>.from(
          responseList.map((item) => PodcastSearchResult.fromItunes(item)));
    } catch (e) {
      throw Exception(e);
    }
  }
}
