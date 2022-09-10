import 'dart:ui';
import 'package:flutter/material.dart';

class ContainerBody extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String size;
  final IconData icon;

  ContainerBody(
      {Key? key,
      required this.title,
      required this.date,
      required this.time,
      required this.size,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: const Color.fromARGB(255, 47, 49, 66),
      ),
      padding: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
      height: 90.0,
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("images/connor_panthera.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Text(
                        date,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        size,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Text(
                    time,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
