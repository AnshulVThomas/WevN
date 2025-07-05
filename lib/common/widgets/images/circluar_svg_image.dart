import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';

class TCircularSvgImage extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final BoxFit fit;
  final Alignment alignment;
    final double padding;

  const TCircularSvgImage({
    super.key,
    required this.svgAsset,
    this.size = 50,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 0,
    this.fit = BoxFit.contain,
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
        border: borderColor != null && borderWidth > 0
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
      ),
      child: ClipOval(
        child: SvgPicture.asset(
          svgAsset,
          width: size,
          height: size,
          fit: fit,
          alignment: alignment,
        ),
      ),
    );
  }
}
