import 'package:flutter/material.dart';

class SmallHeading extends StatelessWidget {
  final String text;
  const SmallHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .headline6!
          .copyWith(color: Colors.pink[300], fontWeight: FontWeight.w700),
    );
  }
}
