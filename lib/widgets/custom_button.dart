import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const CustomButtom({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(5),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white60),
          //shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$title',
            style: TextStyle(fontSize: 15, color: Colors.pink[300]),
          ),
        ));
  }
}
