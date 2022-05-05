class FeedMedia{
  final String episode_identifier;
  final String item_url;

  final int duration;
  final int played_duration;
  final int size;
  final String image;

  FeedMedia(this.episode_identifier, this.item_url, this.duration, this.size, this.played_duration, this.image);
}