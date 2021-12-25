import 'package:flutter/material.dart';

class OnHoverEffect extends StatefulWidget {
  final Widget child;
  final Matrix4? transform;
  OnHoverEffect({Key? key, required this.child, this.transform})
      : super(key: key);

  @override
  _OnHoverEffectState createState() => _OnHoverEffectState();
}

class _OnHoverEffectState extends State<OnHoverEffect> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = widget.transform ?? Matrix4.identity();
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            transform: transform,
            child: widget.child));
  }

  void onEntered(bool value) => setState(() {
        this.isHovered = value;
      });
}
