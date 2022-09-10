import 'package:flutter/material.dart';
import 'package:cassette/src/models/podcast.dart';
import 'package:flutter/painting.dart';

class PodCard extends StatelessWidget {
  final Podcast podcast;

  const PodCard({Key? key, required this.podcast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            // height: 200,
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              podcast.image,
              fit: BoxFit.cover,
              // width: 165.0,
              // height: 60.0,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              podcast.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              podcast.author,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            )
          ],
        ),
      ],
    );
  }
}
