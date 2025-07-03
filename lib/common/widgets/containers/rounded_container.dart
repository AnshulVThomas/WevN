import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  final double borderRadius;
  final Color color;
  final Widget? child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Alignment? alignment;

  const TRoundedContainer({
    super.key,
    this.borderRadius = 16.0,
    this.color = Colors.blue,
    this.child,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(8.0),
    this.width,
    this.height,
    this.backgroundColor=Colors.amber,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}