import 'package:cassette/src/models/search_models/podcast_search_result.dart';

abstract class IPodcastSearchRepository {
  Future<List<PodcastSearchResult>> search(String query);
}
