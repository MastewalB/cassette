import 'package:cassette/src/models/genre.dart';
import 'package:cassette/src/models/podcast.dart';

final episodes = [
  {
    "title": "Permanent Record By Edward Snowden",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "Lex Fridman Podcast",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "Bitcoin, Anarchy, and Economy",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "Permanent Record By Edward Snowden",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
];

List<Genre> genres = [
  const Genre(id: 01, name: "Comedy", podcastCount: 10),
  const Genre(id: 02, name: "Adventure", podcastCount: 21),
  const Genre(id: 03, name: "Crime", podcastCount: 7),
  const Genre(id: 04, name: "Life", podcastCount: 4),
  const Genre(id: 05, name: "Psychology", podcastCount: 10),
  const Genre(id: 06, name: "Technology", podcastCount: 11),
];

List<Podcast> podcasts = [
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/compq.jpg",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/connor_panthera.png",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/compq.jpg",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/cookie.jpg",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/connor.png",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/compq.jpg",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/connor_panthera.png",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/connor_panthera.png",
      title: "The Peril of Niedamir"),
  const Podcast(
      description: "Does Niedamir really want to find the mountain?",
      author: "Troubador Jaskier",
      image: "images/cookie.jpg",
      title: "The Peril of Niedamir"),
];
