import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cassette/src/models/feed_item.dart';

class ContainerBody extends StatelessWidget {
  ContainerBody({Key? key}) : super(key: key);

  //required this.feed_item
  // FeedItem feed_item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80.0,
          width: 500.0,
          child: Container(
            // color: const Color.fromARGB(200, 93, 84, 143),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "images/connor_panthera.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          'Connor Ronnonc',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),

                    ],
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
