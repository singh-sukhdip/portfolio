import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const CustomButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$title',
          ),
        ));
  }
}
