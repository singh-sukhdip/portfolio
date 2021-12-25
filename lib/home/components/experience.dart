import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('mRoznamcha app'),
          Text('Elector Search app'),
          Text('portfolio website'),
        ],
      ),
    );
  }
}
