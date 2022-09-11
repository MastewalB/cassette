import 'package:flutter/material.dart';


class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function() onPressed; // Change Function() to VoidCallback for any inconvenience regarding onPressed callback

  const CircleButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(

        icon: Icon(icon),
        iconSize: iconSize,
        color: Theme.of(context).primaryIconTheme.color,
        onPressed: onPressed,
      ),
    );
  }
}
