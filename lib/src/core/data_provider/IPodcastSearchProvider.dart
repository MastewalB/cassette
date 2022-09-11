import 'package:cassette/src/models/search_models/podcast_search_result.dart';

abstract class IPodcastSearchProvider{
  Future<List<PodcastSearchResult>> search(String query);
}