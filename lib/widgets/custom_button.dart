import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const CustomButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: onTap,
          child: Container(
            //margin: EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '$title',
            ),
          )),
    );
  }
}
