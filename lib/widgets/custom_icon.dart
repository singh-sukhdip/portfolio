import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onTap;
  const CustomIcon({Key? key, @required this.icon, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              color: Colors.grey[500]!,
              offset: const Offset(2.0, 2.0),
              blurRadius: 8.0,
              spreadRadius: 1.0)
        ],
      ),
      //height: 100,
      // width: 30,
      child: IconButton(
        iconSize: 25,
        onPressed: onTap,
        icon: Icon(icon),
        color: Colors.black87,
      ),
    );
  }
}
