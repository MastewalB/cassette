import 'package:flutter/material.dart';
import 'package:cassette/src/models/podcast.dart';
import 'package:cassette/src/models/episode.dart';
import 'package:flutter/services.dart';
import 'package:cassette/src/features/player/player.dart';
import 'package:cassette/src/core/common_widgets/common_widgets.dart';

class EpisodeDetailPage extends StatelessWidget {
  final Podcast podcast;
  final Episode episode;
  final int index;

  const EpisodeDetailPage(
      {Key? key,
      required this.podcast,
      required this.episode,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ClipRRect(
                  child: Image.asset(
                    podcast.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          DefaultTextStyle(
            style: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontSize: 15),
            child: Container(
              padding: EdgeInsets.all(15),
              color: Color.fromARGB(200, 93, 84, 143),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    podcast.author,
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5, 0.0, 5),
                    child: Text(
                      (index + 1).toString() + " - " + episode.title,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(episode.time),
                      SizedBox(
                        width: 10,
                      ),
                      Text(episode.date)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 18, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.play_circle_fill,
                    size: 43,
                    color: Color.fromARGB(200, 110, 100, 160),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlayerPage(podcast: podcast, episode: podcast.episodes[index],)
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.cloud_download_rounded,
                    size: 43,
                    color: Color.fromARGB(200, 110, 100, 160),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: ReadMore(
              data: podcast.description,
              style: TextStyle(color: Colors.white, fontSize: 17),
              trimLines: 10,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              // moreStyle:
            ),
          ),
        ],
      ),
    );
  }
}
