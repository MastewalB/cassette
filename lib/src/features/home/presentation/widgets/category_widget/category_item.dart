import 'package:flutter/material.dart';
import 'package:cassette/src/models/genre.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
    required this.callback,
  }) : super(key: key);

  final Genre category;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback(),
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInCirc,
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            alignment: Alignment.center,
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 47, 49, 66),
            ),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            width: 60,
            child: Text(
              category.name,
              style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
