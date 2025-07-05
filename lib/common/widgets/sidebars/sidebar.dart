import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/images/circular_png_image.dart';
import 'package:wevn/utils/constraints/colors.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: TColor.appBarColor,
          border: Border(
            right: BorderSide(
              color: TColor.appBarBorderColor,
              width: 1.0,
            ),
          )
        ),

        child: SingleChildScrollView(
          child:Column(
            children: [
              TCircularPngImage(imagePath: "assets/icons/logo1.sm.png", size: 100, fit: BoxFit.cover, backgroundColor: Colors.white, borderColor: Colors.black12, borderWidth: 1.0),
            ],
          )

        ),
      ),
    );
  }
}