import 'package:cassette/src/core/repository/IPodcastSearchRepository.dart';
import 'package:cassette/src/models/search_models/podcast_search_result.dart';

class PodcastSearchRepository implements IPodcastSearchRepository{
  @override
  Future<List<PodcastSearchResult>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

}