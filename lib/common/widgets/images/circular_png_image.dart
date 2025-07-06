import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';

class TCircularPngImage extends StatelessWidget {
  final String imagePath;
  final double size;
  final BoxFit fit;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final Alignment alignment;
  final double padding;

  const TCircularPngImage({
    super.key,
    required this.imagePath,
    this.size = 50,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 0,
    this.alignment = Alignment.center,
    this.padding = TSizes.sm, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        // border: borderColor != null && borderWidth > 0
        //     ? Border.all(color: borderColor!, width: borderWidth)
        //     : null,
        image: DecorationImage(
          
          image: AssetImage(imagePath),
          
          fit: fit,
          
        ),
      ),
    );
  }
}
