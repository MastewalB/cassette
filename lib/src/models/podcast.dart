class Podcast {
  final String title;
  final String description;
  final String author;
  final String image;
  final int count;
  final List episodes;

  const Podcast({
    required this.description,
    required this.author,
    required this.image,
    required this.title,
    required this.count,
    required this.episodes,
  });
}
