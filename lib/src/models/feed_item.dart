import 'package:cassette/src/models/feed_media.dart';

class FeedItem{
  final String title;
  final String description;
  final DateTime publish_date;
  final FeedMedia media;

  FeedItem(this.title, this.description, this.publish_date, this.media);
}