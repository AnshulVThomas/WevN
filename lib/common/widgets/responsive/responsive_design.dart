import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';

class TResponsiveWidget extends StatelessWidget {
  const TResponsiveWidget({super.key, required this.desktop, required this.tablet, required this.mobile});

  final Widget desktop;

  final Widget tablet;

  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,constraints) {
        if (constraints.maxWidth >= TSizes.desktopScreenSize) {
          return desktop;
        } else if (constraints.maxWidth >= TSizes.tabletScreenSize) {
          return tablet;
        } else {
          return mobile;
        }
      },
      );
  }
}