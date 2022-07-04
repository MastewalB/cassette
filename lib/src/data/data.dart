import 'package:cassette/src/models/genre.dart';
import 'package:cassette/src/models/podcast.dart';
import 'package:cassette/src/models/episode.dart';

List<Episode> episodes = [
  Episode(
      title: "The Dragon of the West",
      date: "17 Jun 2020",
      size: "53 MB",
      time: "00:10:10"),
  Episode(
      title: "What do you Know about Lemurs?",
      date: "17 Jun 2020",
      size: "53 MB",
      time: "00:10:10"),
  Episode(
      title: "The Siege of Ba Sing Se",
      date: "17 Jun 2020",
      size: "53 MB",
      time: "00:10:10"),
  Episode(
      title: "The Cabbage Man's Adventure",
      date: "17 Jun 2020",
      size: "53 MB",
      time: "00:10:10"),
  Episode(
      title: "Appa's Lost Days: A Narrative",
      date: "17 Jun 2020",
      size: "53 MB",
      time: "00:10:10")
];

final ep = [
  {
    "title": "The Dragon of the West",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "What do you Know about Lemurs?",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "The Siege of Ba Sing Se",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "The Cabbage Man's Adventure",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
  {
    "title": "Appa's Lost Days: A Narrative",
    "date": "17 Jun 2020",
    "size": "53 MB",
    "time": "00:10:10"
  },
];

final episode = [
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
  Podcast(
    description: "Does Niedamir really want to find the mountain?",
    author: "Troubador Jaskier",
    image: "images/of.jpg",
    title: "The Peril of Niedamir",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "La sacerdotisa era una figura maternal y severa, pero se burlaba de ser llamada 'Madre'. Fue mentora de la joven Iola, y su farmacia era famosa por sus pociones, elixires y ungüentos, algunos de los cuales requerían hierbas que crecían solo en el invernadero con techo de cristal en los terrenos del templo. Se sabía que la esposa del duque Hereward, Ermellia, disfrutaba de los afrodisíacos que Nenneke cocinaba. ",
    author: "Nenneke de Melitele",
    image: "images/sauron.jpg",
    title: "Sauron's Trap",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "GNU es un sistema operativo de software libre, es decir, respeta la libertad de los usuarios. El sistema operativo GNU consiste en paquetes de GNU (programas publicados específicamente por el proyecto GNU) además de software libre publicado por terceras partes. El desarrollo de GNU ha permitido que se pueda utilizar un ordenador sin software que atropelle nuestra libertad.",
    author: "The GNU Guy",
    image: "images/gnu.png",
    title: "GNU's not UNIX!",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "La Princesa Azula es un personaje ficticio y uno de los principales antagonistas de la serie de televisión animada de Nickelodeon Avatar: la leyenda de Aang, creada por Michael Dante DiMartino y Bryan Konietzko, y con la voz de Grey DeLisle.",
    author: "Troubador Jaskier",
    image: "images/azula.jpg",
    title: "Azula's Next Target",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "A brand, such as a copyrighted brand, is also something that can catch on and circulate swiftly. In the past decade, the image of a burning car has become a symbol of political revolt and resistance. Car burning became common practice at political uprisings, such as the Paris revolts in 2008.",
    author: "Apage La Flama",
    image: "images/carof.jpg",
    title: "Fuego del Carro",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "Monica and Chandler (also known as Mondler) is the romantic paring between Monica Geller and Chandler Bing. It started in the city of New York.",
    author: "Joey Tribianni",
    image: "images/photo.jpg",
    title: "Monica and Chandler",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description: "Does Manolka really want to find the mountain?",
    author: "Manolka",
    image: "images/connor.png",
    title: "Las Myesterie de Manolka",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "C es un lenguaje de programación de propósito general originalmente desarrollado por Dennis Ritchie entre 1969 y 1972 en los Laboratorios Bell, ​ como evolución del anterior lenguaje B, a su vez basado en BCPL. Al igual que B, es un lenguaje orientado a la implementación de sistemas operativos, concretamente Unix. ",
    author: "Dennis Ritchie",
    image: "images/luc.jpg",
    title: "Let us C",
    count: episodes.length,
    episodes: episodes,
  ),
  Podcast(
    description:
        "The Crossword Solver found 20 answers to 'pills and such', 4 letters crossword clue. The Crossword Solver finds answers to classic crosswords and cryptic crossword puzzles. Enter the length or pattern for better results. Click the answer to find similar crossword clues. ",
    author: "The Local Provider",
    image: "images/pills.jpg",
    title: "Pills and Such",
    count: episodes.length,
    episodes: episodes,
  ),
];
