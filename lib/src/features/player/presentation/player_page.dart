import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  // final String image;
  // final String title;
//required this.image, required this.title
  const PlayerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  Duration position = Duration();
  Duration musicLength = Duration();

  bool playing = false; // at the begining we are not playing any song
  IconData playBtn = Icons.play_arrow;



  Widget slider() {
    return Container(
      width: 420.0,
      child: Slider.adaptive(
        // mouseCursor: MouseCursor.defer,
        activeColor: Colors.white,
        inactiveColor: Colors.white70,
        value: position.inSeconds.toDouble(),
        onChanged: (value) {
          seekToSec(value.toInt());
        },
      ),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    // _player.seek(newPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 41, 49, 63),
              Color.fromARGB(255, 7, 5, 5),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 48.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80.0,
                ),
                Center(
                  child: Container(
                    width: 340.0,
                    height: 300.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("images/connor.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Bitcoin, Anarchy, and Economy",
                    // widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    "Lex Friedman",
                    // widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 500.0,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white70),
                                ),
                                SizedBox(
                                  width: 340,
                                ),
                                Text(
                                  "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white70),
                                ),
                              ],
                            ),
                            slider(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 20.0,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.shuffle,
                            ),
                          ),

                          IconButton(
                            iconSize: 30.0,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous,
                            ),
                          ),

                          IconButton(
                            iconSize: 40.0,
                            color: Colors.white,
                            onPressed: () {
                              if(!playing){
                                setState(() {
                                  playBtn = Icons.pause;
                                  playing = true;
                                });
                              }else{
                                setState(() {
                                  playBtn = Icons.play_arrow;
                                  playing = false;
                                });
                              }
                            },
                            icon: Icon(
                              playBtn,
                            ),
                          ),

                          IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_next,
                            ),
                          ),

                          IconButton(
                            iconSize: 20.0,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.repeat,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
