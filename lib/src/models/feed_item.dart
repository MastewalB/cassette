import 'package:cassette/src/models/feed_media.dart';

class FeedItem{
  final String title;
  final String description;
  final DateTime publish_date;
  final String episode_identifier;
  final String item_url;
  final FeedMedia media;

  FeedItem(this.episode_identifier, this.item_url, this.title, this.description, this.publish_date, this.media);
}