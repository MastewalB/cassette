class PodcastSearchResult {
  final String title;
  final String imageUrl;
  final String feedUrl;
  final String author;

  const PodcastSearchResult({
    required this.title,
    required this.imageUrl,
    required this.feedUrl,
    required this.author,
  });

  factory PodcastSearchResult.fromItunes(Map<String, dynamic> jsonResult) {
    return PodcastSearchResult(
      title: jsonResult["collectionName"],
      imageUrl: jsonResult["artworkUrl100"],
      feedUrl: jsonResult["feedUrl"],
      author: jsonResult["artistName"],
    );
  }
}
