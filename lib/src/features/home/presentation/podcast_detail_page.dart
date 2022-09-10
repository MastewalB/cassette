import 'package:cassette/src/features/home/presentation/episode_detail_page.dart';
import 'package:cassette/src/models/podcast.dart';
import 'package:flutter/material.dart';
import 'package:cassette/src/core/common_widgets/common_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PodcastDetailPage extends StatelessWidget {
  final Podcast podcast;

  const PodcastDetailPage({Key? key, required this.podcast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Icon(
                Icons.settings,
                size: 28,
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 300,
                // width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    podcast.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(25.0, 15.0, 15.0, 0.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                podcast.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 0.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                podcast.author,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 10.0),
              child: ReadMore(
                data: podcast.description,
                style: TextStyle(color: Colors.white, fontSize: 14,),
                trimLines: 4,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                // moreStyle:
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          (index + 1).toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: PodCardSmall(
                        title: podcast.episodes[index].title,
                        duration: podcast.episodes[index].time,
                        image: podcast.image,
                      ),
                      onTap: () {
                        // print(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EpisodeDetailPage(
                              podcast: podcast,
                              episode: podcast.episodes[index],
                              index: index,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }, childCount: podcast.episodes.length),
          )
        ],
      ),
    );
  }
}
